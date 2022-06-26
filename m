Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70EC055B403
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 22:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231939AbiFZUSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 16:18:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231767AbiFZUSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 16:18:24 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 724EB181
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 13:18:21 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id fi2so14976186ejb.9
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 13:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lnbF1fjC+JvjJ15dVinDZNgoh7EJaSVwGaKHW7o0wZ8=;
        b=wW32Ek+GuFD9uwHEGLBbT+0C8MIBVLar4kXtsEkBF64mra8w7rqkWRoVkPW/k8YU/H
         7M6WNL+0rAWa40wnTM5rB+KaD/HyXE5dCJilu7P1YZAd2lyR9TzMvTjHZsufmasYkLaY
         LCOR4F1tuzGnIP7lEm//+/rqZDxzOjO5v5H97H4ZPYDQIgfOUEnmtO77oth0Jy5rp9Xx
         1M7QFSezlIsfPunkRVIiDUri06hnezyGcjJLtOZR8st+nTNaLCtXHjz040qrgFPfOMd6
         hGZWE/dx9EfCKwcqmcLT0/ogb8vOicAvxZlDbhI68G6x1BKjReBIM75XoYYc7of9jXi4
         qyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lnbF1fjC+JvjJ15dVinDZNgoh7EJaSVwGaKHW7o0wZ8=;
        b=xTRCKvJlc0gtI+EqVpaDwPQFAlml/MKaeAw0TKU4Gg7kT/iAO2gQvGEnJxlkWjZ4Pb
         cbL50MAOqjfDLmp2bAnRzjfnrwqcqW3qUZ8OBg5PmwBowxH2SUZ5QwYHAGuH+MxTdMet
         LstO3+PBpu674Jr36++1o/gS3+RnvYfxdltOiigwPubDSeABlZgW5QP+EwmCBQPMZS2v
         Rdlfuh6kst6V+8ClrcObRkDh/qfZSOaFF68NpDlk3mO5PcIjwtDCPYhNsijxNgD8laQ/
         MaNp5wny2vHH3gVrlaD1/dsy3gUuINtmDbhGnbuhy6Zhppe3Nas5/+6SRFPHyP3cwy+6
         tU2A==
X-Gm-Message-State: AJIora927vOYNxhpiTU3aZAqkur/NoxOzEChqjEoxGOwsOmdniU84oFm
        wvrm98SwN1RZWw+d5kD+TWZzhA==
X-Google-Smtp-Source: AGRyM1v0yaNtAV+Id57QV3yP/7C35VegUiMHZ3SK4snewZleCVTI+jGXtu3/rbJCqSl6AXK/2njUDQ==
X-Received: by 2002:a17:907:3e81:b0:726:9615:d14d with SMTP id hs1-20020a1709073e8100b007269615d14dmr5276783ejc.517.1656274699878;
        Sun, 26 Jun 2022 13:18:19 -0700 (PDT)
Received: from [192.168.0.245] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c20-20020a056402101400b004358cec9ce1sm6402929edu.65.2022.06.26.13.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 13:18:19 -0700 (PDT)
Message-ID: <4fdcb631-16cd-d5f1-e2be-19ecedb436eb@linaro.org>
Date:   Sun, 26 Jun 2022 22:18:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/3] dt-bindings: net: rockchip-dwmac: add rk3588 gmac
 compatible
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-4-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220623162850.245608-4-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/06/2022 18:28, Sebastian Reichel wrote:
> Add compatible string for RK3588 gmac, which is similar to the RK3568
> one, but needs another syscon device for clock selection.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
>  2 files changed, 7 insertions(+)

Rebase on some new kernel tree, you use old Cc addresses.

> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 083623c8d718..c42f5a74a92e 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -25,6 +25,7 @@ select:
>            - rockchip,rk3368-gmac
>            - rockchip,rk3399-gmac
>            - rockchip,rk3568-gmac
> +          - rockchip,rk3588-gmac
>            - rockchip,rv1108-gmac
>    required:
>      - compatible
> @@ -50,6 +51,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,rk3568-gmac
> +              - rockchip,rk3588-gmac
>            - const: snps,dwmac-4.20a
>  
>    clocks:
> @@ -81,6 +83,10 @@ properties:
>      description: The phandle of the syscon node for the general register file.
>      $ref: /schemas/types.yaml#/definitions/phandle
>  
> +  rockchip,php_grf:

What does the "php" mean?

No underscores in names, hyphens instead.


Best regards,
Krzysztof
