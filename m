Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63AAF6CC9D0
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 19:58:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjC1R6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 13:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229909AbjC1R6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 13:58:06 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 207B0DBC1
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:58:01 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id p203so16154341ybb.13
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680026281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LBIZOLCnuyFDnYVdehzBMZi5Ft2DJgOUzv5Wl1H9Km8=;
        b=Mb1Dh1g4NbOY4FAAWP7WPIZL48Hziw/rX7aDJpJXu/8SqQRUhmRH41mxRFJMsyZm3T
         RtIWyVGz8Vm2ANtYysKVQXs9pa0DheT/UOjmrksb0BjYR/I7nixBS5VPHfUi9019F8cQ
         Pc+lk+rvofCla7ffXPCd3BPuG76cIQZhQXBiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680026281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LBIZOLCnuyFDnYVdehzBMZi5Ft2DJgOUzv5Wl1H9Km8=;
        b=FT2PU4Ak/rLIitAGJTDZJ13FTehBvaD35d5JXm5u77RkdmSWH+Sg3C1C9EltGg1VvA
         8IiTgCT5NzlyL2DCe2R2OoyafQA8EFgpgY89GrewMLYhZy/D5JKkAgf8+0G3XJP4a8+V
         lysthtzEqUz4LW+XDZ2SDc47Je3arw6S4Vk7uKn5yXLmxjNsouPJj4jOZBsvWRUcFWK0
         3PTeBA5lNTdD8uinHUzt2JjLRP0cFKrGmdeCTdKBcmagWQiYA+jaVhhImQWjgs5bhOqV
         lQg3JrQOUuQqS5j2XgMVjIYOu6MaS3FYby5bENZw3+xBghwRw6JUAyyg90CoqpUpbQsY
         LZxg==
X-Gm-Message-State: AAQBX9cxPQwr+EPkqHhtaWp0fpiu3GSOtVgcBpcZisCRa5rAAfpLtBpv
        xCfH4/Wv5rZS/UuIr/YK1tZQccifgyZ3WVdMWlUhXg==
X-Google-Smtp-Source: AKy350YZnVf6f58xk7w48QP4ob6S+rgyFRsoJsdBTz4gvcHKnfayCAVmmHjyD+8GX1vUTngInwQkDMvOZEiLekqSVCw=
X-Received: by 2002:a05:6902:154a:b0:b3c:637f:ad00 with SMTP id
 r10-20020a056902154a00b00b3c637fad00mr11078963ybu.5.1680026280970; Tue, 28
 Mar 2023 10:58:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 28 Mar 2023 23:27:49 +0530
Message-ID: <CAMty3ZDFo9JU2DOqwTN1kj=hKxomvi7tz5guvWG5P=npAg6RNg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: display: xinpeng,xpp055c272: document port
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 2:12=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Panels are supposed to have one port (defined in panel-common.yaml
> binding):
>
>   px30-evb.dtb: panel@0: 'port' does not match any of the regexes: 'pinct=
rl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
