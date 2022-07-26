Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 567605815DA
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 17:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239332AbiGZPBT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 11:01:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238739AbiGZPBT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 11:01:19 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5082F21802
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 08:01:18 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id bf9so22962218lfb.13
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 08:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/Abp4O2phjlQwqXSiq9vrzI7rfG09ZHavgh2SmBCZxI=;
        b=FNgYeohdCATVAP7X2iU36R9MeHDqIbl1lqmT50Bo1fwMpKLGUi26xD8u7IdsBxpDNr
         Wr66GNWgOu5zxSsqL/8P7lyTUyVZ+aN6us+npUllII5a1OB0/qOkaX0t0gy3zcEySwFo
         DEYukwmIhobCcct4j6e0Lrn58FTitKxBfWgQSw8pxQWFmS9BhxdRdaMI8cm618dc3rVK
         4Ok/3YT3C3L6Fs1CIH0OYz201C/kLUg3DUrQDRzMAvm7aB/iA2Dcp7LrIIugeGyjSVW2
         NSitrE1iGO764X6mIHq1mZDJXJgWIGdMbAEcP8YIoidic1iUBcteMr6K8ie06+8OsP3r
         ah9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/Abp4O2phjlQwqXSiq9vrzI7rfG09ZHavgh2SmBCZxI=;
        b=kxSNbJWrRNMAZsvSCzqNXR87LZlQqZoTd/1/v4EUadCBgXOwvAplW1vhLwIjrhLALS
         Jo6yz/AalTnFpzV0ec2iFD8Su2Lxtj9VycGJu8QtaAYrGffSp0e4o3TI6nMnbhv/uGOi
         1Q8I4QZgf1mNNSmGVsO6pKdIKSPmpHVObH4uV7kmVjfeXsgTeFrTAj1gPxeUjq9/YRw1
         kXsp/WLHkE2uFrnHhSAvtjxiFHUz1awz7Va8NDehIW45IHmDnRhyow3EEODQluQyIGha
         j7GzbwalswWPvrjzsvmcCWg+RRevtjHjvinMSNX8JjJv3aD7vSPbenyZimRdzO4GFNIy
         KVEw==
X-Gm-Message-State: AJIora+UZaE25jUP7PZR6fyePKXkXbrYjlUHCecPwb/oxWMXAWjBRd10
        a1EZRKaldqyVIDiDUhTVAoyvo31Wt+KJH9m65zaeRcrQgAXcdw==
X-Google-Smtp-Source: AGRyM1tWqxY9BYKQk44juX1eKWFfDs070weNDGQdXByMLPBbsJzkZx2RmQqqnjwR5M0SiaGb9Mt98TJpDepqL0XK05E=
X-Received: by 2002:ac2:4249:0:b0:48a:9f05:776a with SMTP id
 m9-20020ac24249000000b0048a9f05776amr1542411lfl.184.1658847676121; Tue, 26
 Jul 2022 08:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-12-jagan@edgeble.ai>
In-Reply-To: <20220723204335.750095-12-jagan@edgeble.ai>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 26 Jul 2022 17:00:38 +0200
Message-ID: <CAPDyKFp0bqiAnvQpNwD5JzKe4vUAGe7RH6Gog6VScqbea376iw@mail.gmail.com>
Subject: Re: [PATCH 11/22] dt-bindings: mmc: rockchip-dw-mshc: Document
 Rockchip RV1126
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 23 Jul 2022 at 22:44, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Add a compatible string for Rockchip RV1126 SoC.
>
> Cc: linux-mmc@vger.kernel.org
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 54fb59820d2b..8d888b435817 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - rockchip,rk3399-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rv1108-dw-mshc
> +              - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
>
>    reg:
> --
> 2.25.1
>
