Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B316629A25
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 14:28:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232642AbiKON2D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 08:28:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229970AbiKON17 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 08:27:59 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29D4713E3F
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:27:55 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id b9so17510697ljr.5
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4CAGamBCwJlvXGLjsJzY/wgNzAR0V/YSmcsK0zwqq8s=;
        b=eOK41ApNBaa1GYLru+QjrijP97HhH673awTACRDo3sALtzQSYyrsfwshQB5pe/xFov
         mvDrfBKEX1V9nCTI9dovVaGRj3X5q6dcQs+aPxwrVBF08OwN+oy9Lm06DABE84im/FxT
         DSKzd+ciO7KT6G2KaLdoRYOc34B0PYts1TZBsAWmbs78ZJH2mNAXFL/3fAOBacsb6oDu
         W7y0qDdtcQ/Bho5unyaESb2EWaEg1f67d3MH7DRtPw75HDMihLJxKb+iImDSiqkLEwmB
         E/CVJKY/dnZqeY9FOxaKBte0IPJjOVxYQf7ORRb6xrcknSYI1dbuyWWk2XmgCo/tDDq+
         c2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4CAGamBCwJlvXGLjsJzY/wgNzAR0V/YSmcsK0zwqq8s=;
        b=jqikzBEChXDMRBBtcYtFNxKx4X06DQWlfopNfWPNHbuBviyPV/ab2dNNn0IU3nqI0o
         c2D7hqhlSCd7aafnV2HcG6xrsNrcaVtVA3va4bHTcDlrtXgY2QYwu8HrHo/MLU5C3Tu9
         a5b6ovwISy0lQMQcWQiTzz0ApObpnj59SAGAG/IjKa1+6kyVKYt29Y47ebNi9DTLxNTB
         O8pWgmm4/xzj7DTmvYbFV33auwFTa/jsVoGaRmhz8RETisfB3mMyEZpLKiwWsORLlj5u
         6FN4Dp2cHYLI/mHgDH8jp9lbCBD22gxmB2hsDx/tMEzE5abg2JKO26iPu8f4Mf7HQO7G
         uKiA==
X-Gm-Message-State: ANoB5pnXxU8LlQxqwhIzTuW8GXMCsNXtQzePAiZcO9Osai4aX3p6xCTL
        Do+EIAiRDAJ2Wc25Ml9eVmB8DQ==
X-Google-Smtp-Source: AA0mqf6fJcy47gcfAUV27JcgRnri6g7fOH0qrvTrYn9j65yLVWJYl+kJXAMipdsNznLO/OeMb88E6A==
X-Received: by 2002:a2e:b1c7:0:b0:277:794:cb84 with SMTP id e7-20020a2eb1c7000000b002770794cb84mr6071216lja.7.1668518873539;
        Tue, 15 Nov 2022 05:27:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t10-20020a195f0a000000b0049c86ca95bfsm2205747lfb.52.2022.11.15.05.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:27:52 -0800 (PST)
Message-ID: <5deca781-90e6-4f72-1abc-cb0bd4777187@linaro.org>
Date:   Tue, 15 Nov 2022 14:27:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 09/10] dt-bindings: phy: Add Cadence HDP-TX HDMI PHY
Content-Language: en-US
To:     Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, vkoul@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
        javierm@redhat.com, ville.syrjala@linux.intel.com,
        sam@ravnborg.org, jani.nikula@intel.com, maxime@cerno.tech,
        penguin-kernel@I-love.SAKURA.ne.jp, oliver.brown@nxp.com
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <a88409e6003fbb2a57df36ef4116a2cdb1c1eec1.1667911321.git.Sandor.yu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a88409e6003fbb2a57df36ef4116a2cdb1c1eec1.1667911321.git.Sandor.yu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/11/2022 14:00, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX HDMI PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/cdns,hdptx-hdmi-phy.yaml     | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..c2ed17ffe6ef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,hdptx-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence HDP-TX(HDMI/DisplayPort) PHY for HDMI protocol
> +
> +maintainers:
> +  - Sandor Yu <sandor.yu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,hdptx-hdmi-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      description:

Same problem.


Best regards,
Krzysztof

