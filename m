Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 514B36EAEE6
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 18:16:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230310AbjDUQQA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 12:16:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233025AbjDUQP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 12:15:59 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A7B13C1E
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:15:54 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-74e0180b7d3so113619185a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682093753; x=1684685753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QZZtA/5NWdnQgb0jJuRZbKZ4eCkzSLiidtnIgHAhGA=;
        b=ctHvTjO/5U4CovqOB/IKUYhR5Rb84nnSGabYqdPB4zLuTXbLdPUDXWNgiX5PxrfrC+
         M1BwvxR2MVfL5nSisBMT8K22lGTd5mopnPhKLw8gHS6j4pJPDj5w3TTEsiewVZeH453B
         8+tiS0Bdao4gH8YxugF/N7GrF+RNYmINQeVa0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682093753; x=1684685753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9QZZtA/5NWdnQgb0jJuRZbKZ4eCkzSLiidtnIgHAhGA=;
        b=SVlGsZESlnPDdVQektZ301a49ks9F8ftreVaMsgwqKZ66lj7qBe6nLgB2cEt9XYC7+
         UfCtAMwi0zXt0YvL5TVrno0nF4kHflUgrJYusCDfYO3qCpzQiC9R2eWa96tb6vPt1JWz
         bTYtJ4FXhYmOOCjtOsZrV3T5phfmYyB9BFI+YPIabLZzqKZ/u8d/7B7DJZc5UcI7tL0g
         MJS4kHfA24UIiFP+ABueofGwqO6jWBqRXEZJRtZKFXMrCD9XB6gBB34JcC59zd3HfYaM
         QK+HxR02TvTK9yiRRxcVKHKWdFfxDn11Y20UfS2t8dbCVeT6QID/pmtQIhi3JvJMuEJP
         pCZA==
X-Gm-Message-State: AAQBX9cjKdLFUeltXMxAhmnS/A7fvWaIzebpA7qWKOeBeTiPPGLx0Bpg
        MF4jPAAQ5TyK03Y5L9sNYI11vmkJ93qCrE0h94I=
X-Google-Smtp-Source: AKy350aiqweEHvrl3cXKTOSr9PaI9rCWZfLMEMCeYRZElBXMuQrQCkj4oY1pZJHGs2yGjwGbFiSt+A==
X-Received: by 2002:a05:6214:3011:b0:5c2:6493:f631 with SMTP id ke17-20020a056214301100b005c26493f631mr8016616qvb.51.1682093753297;
        Fri, 21 Apr 2023 09:15:53 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id b9-20020a0ccd09000000b005e5b2c560d0sm1270665qvm.7.2023.04.21.09.15.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 09:15:51 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-3ef34c49cb9so1167761cf.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:15:50 -0700 (PDT)
X-Received: by 2002:a05:622a:1906:b0:3db:1c01:9d95 with SMTP id
 w6-20020a05622a190600b003db1c019d95mr440522qtc.4.1682093750390; Fri, 21 Apr
 2023 09:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230201-innolux-g070ace-v2-0-2371e251dd40@skidata.com> <20230201-innolux-g070ace-v2-1-2371e251dd40@skidata.com>
In-Reply-To: <20230201-innolux-g070ace-v2-1-2371e251dd40@skidata.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 21 Apr 2023 09:15:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XJCtqep+92h3gLfs4o2TwvL4MORjc9ydTSpZiZ0dsR0w@mail.gmail.com>
Message-ID: <CAD=FV=XJCtqep+92h3gLfs4o2TwvL4MORjc9ydTSpZiZ0dsR0w@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 1/2] dt-bindings: display: simple: add support
 for InnoLux G070ACE-L01
To:     richard.leitner@linux.dev
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Richard Leitner <richard.leitner@skidata.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 13, 2023 at 12:51=E2=80=AFAM <richard.leitner@linux.dev> wrote:
>
> From: Richard Leitner <richard.leitner@skidata.com>
>
> Add Innolux G070ACE-L01 7" WVGA (800x480) TFT LCD panel compatible
> string.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>

nit: as I understand it, ordering of tags is usually supposed to be
chronological. You signed off on this patch before Krzysztof acked it,
so the SoB should be above. I'll fix that when applying.

> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple=
.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 18241f4051d2..fd3e5ad769dc 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -174,6 +174,8 @@ properties:
>        - innolux,at043tn24
>          # Innolux AT070TN92 7.0" WQVGA TFT LCD panel
>        - innolux,at070tn92
> +        # Innolux G070ACE-L01 7" WVGA (800x480) TFT LCD panel
> +      - innolux,g070ace-l01

I think panel-simple currently has no active maintainers. Given that
I've touched all these files in the past, I don't mind applying.

Pushed to drm-misc-next:

4b4b96826ba9 dt-bindings: display: simple: add support for InnoLux G070ACE-=
L01
