Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 712C150B971
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 16:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1448315AbiDVOHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 10:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235751AbiDVOHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 10:07:04 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9D625A168
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:04:10 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id j8so11047676pll.11
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=39lUf1yl40+YGLNTzUYjun3jXQY0aOFmyo+40lpXdxY=;
        b=f1rzo8WcSI5D2o/XSeF4/4vAaUvEkOUqTYTO8PWH+k+/2sAVNirIXCWbGncpCaa1up
         w6w799PmT5B/+BWROzmabVasuuV/3pqapxkpbbp7NMRUDfSJq9/w1AG+dLkcEIFBICRq
         pvIuR52W7+DeaEEuo5N6xL5A81J5eE6/Emh0Q7GW45+x8Y4VKBquwWB0KUFyWWzOYuQL
         8oR76zI7j5AqL3zCNde/JP+q9GZDB1Eo2AO+vYg3i1MFrras+Uw442RHMoOt+qnbnuU2
         ujrR5/JFUmS0GfMvoMuPxglrDPN5EKVofcE5yifEGD0nsKgIQiBgWhoW6o50/bth8Bmr
         x4Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=39lUf1yl40+YGLNTzUYjun3jXQY0aOFmyo+40lpXdxY=;
        b=CaXm/pvYQZx00uAdQqtuhs1LOyHaEGC+LN0K5M09oeAqYe3ai7LesSe42XsKq7tUxY
         QSl2PlnJYqdXlFyP5me1p6IluZ0F/jXh/VFEDS5j0+POGDNWSqK65tuu+wNQliWd3odr
         ym+w4GElvXxwfD3qvxwRtCE0LS2e2zMJ31hxFb5Aslgq+KdEDEhuaaXeupKrqMkq9o7s
         PzCyHuq5sfn1Z3dTTClPzPyPI0u8CgY3syEylQLBn8JMxXhYDC6YT3rEb9gloBtSyz2r
         vEfpnhPvvTJshJUyTvrMzMzTmRXSMsT6gUtSrQ+wUFTlLTn62elz7ZaIgsaAT5EtYa3N
         cV5A==
X-Gm-Message-State: AOAM532zPmarbOU8wFXbS3rnZGCucwJQxw9dbXFFgelqGKZnhFGXBdPL
        NhEhOqSrbOVoVc1XL4U+G4g0b4cJQ+zWoR3lbQ40Aw==
X-Google-Smtp-Source: ABdhPJxpoZmQPGTng14bEynOmrxEymcpGhhsD+taTyHaeH8B3W4SqLmD+ynKEHRm7ME/Tikqr7ZkZXrHr+eSXzto/jA=
X-Received: by 2002:a17:90b:3e84:b0:1d2:c015:2182 with SMTP id
 rj4-20020a17090b3e8400b001d2c0152182mr5559270pjb.232.1650636250132; Fri, 22
 Apr 2022 07:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220422084720.959271-1-xji@analogixsemi.com> <20220422084720.959271-2-xji@analogixsemi.com>
In-Reply-To: <20220422084720.959271-2-xji@analogixsemi.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 22 Apr 2022 16:03:59 +0200
Message-ID: <CAG3jFyuc3EVg=ytcNnLnaP0tEN+6PiUQNoHBdKm4kOEFaY9DZw@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: media: video-interfaces: Add new bus-type
To:     Xin Ji <xji@analogixsemi.com>
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        bliang@analogixsemi.com, qwen@analogixsemi.com,
        Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 Apr 2022 at 10:48, Xin Ji <xji@analogixsemi.com> wrote:
>
> No properly bus-type for DPI video bus, add bus-type 7 for it.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  Documentation/devicetree/bindings/media/video-interfaces.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/media/video-interfaces.yaml b/Documentation/devicetree/bindings/media/video-interfaces.yaml
> index 4391dce2caee..68c3b9871cf3 100644
> --- a/Documentation/devicetree/bindings/media/video-interfaces.yaml
> +++ b/Documentation/devicetree/bindings/media/video-interfaces.yaml
> @@ -93,6 +93,7 @@ properties:
>        - 4 # MIPI CSI-2 D-PHY
>        - 5 # Parallel
>        - 6 # BT.656
> +      - 7 # DPI
>      description:
>        Data bus type.
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
