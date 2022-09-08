Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A26A5B1CB3
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 14:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231561AbiIHMW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 08:22:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231770AbiIHMWP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 08:22:15 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00E38F6B85
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 05:22:11 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id x10so19687530ljq.4
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 05:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=dLNfPVthIDGnvL7i64ft4qcn3DEatPgzaJhqNWGF3ts=;
        b=tN5ys6hDdHw2V6LYl85NdhEbAv3IBthZ49XCt6QVHcsdJiSzDwgWO76jDPCqgX/1Gx
         LOiVgL1JZCg0BPm/ibDkf8X0eKYaXRa4gZiB039yX4MW83KWnh8E1t9ku1w28Gih08wx
         QwPzF8AqW+VZUt6zSKCbJ/fl7Bwz/b5x67+dQw4D+5J3VfRCUisQrJcMt/p030+o42Lw
         jMs2ER9qlCtnOR3piKpSPueODGp4uGJO9mPy/P1KfuAFKjyShG96LsyLwbOYi20omXAq
         nxKLLs1eYiUUm4j4UIfk27EW7Ib66BCv4okEGWDaJSZ+tQQUOKKSkSCeSFKu4ijcEjUI
         dFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=dLNfPVthIDGnvL7i64ft4qcn3DEatPgzaJhqNWGF3ts=;
        b=2IicoRTAMoKlAIpTGcF3a0qofD6ONPXyfxuXWjcRecnQDp98nPtw/7dgesozt1DgYe
         mdZb0QcmEFumcyGaZO3XJAAkcXpRYUNXuLhyT8Rgmb42COWmhhnO99xJ7h5LWlvMihmA
         IK3uCQwfXoVkPNI8ftqZM5TLzxpOP5hX+yQaNK72/0mDtT4YklPKxQe5Xi7RLQGMYBs9
         X0BVXLS3WzF36CHVvs3hRzwXaxUgSqC6pT6zjkejB782y5yrKAay9/ReaMkldMLgQQTx
         ILNxUknXc+PqICVg1m+XMKXBpElTI8MVdIJ1vQS5pkM0al3RukYYqRZ99HDh5VbbTrQg
         gbjw==
X-Gm-Message-State: ACgBeo3RtZvyv0BVlAfXIv6O+f36yYj7kD887J3ZKCreSuiu4/4ozeJ1
        N2wQQ3djdkmOYTlIYTzHyQo6aQ==
X-Google-Smtp-Source: AA6agR72b0agI2YyD/fb1KKijZU1ePELXly2WbC2r0DTgz9pIb4cJL9ka7vjZy0+P5dng67QOaXZmA==
X-Received: by 2002:a2e:2e07:0:b0:26a:c516:5a9a with SMTP id u7-20020a2e2e07000000b0026ac5165a9amr2247937lju.185.1662639729638;
        Thu, 08 Sep 2022 05:22:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a8-20020a056512200800b00497a0ea92desm1446135lfb.135.2022.09.08.05.22.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:22:09 -0700 (PDT)
Message-ID: <e0fe80b8-594a-5d7c-946f-751d59da6641@linaro.org>
Date:   Thu, 8 Sep 2022 14:22:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 15/20] dt-bindings: nvmem: add YAML schema for the sl28
 vpd layout
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
References: <20220901221857.2600340-1-michael@walle.cc>
 <20220901221857.2600340-16-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901221857.2600340-16-michael@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 00:18, Michael Walle wrote:
> Add a schema for the NVMEM layout on Kontron's sl28 boards.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> changes since v1:
>  - add custom select
>  - add description
>  - add "additionalProperties: false", I wasn't sure if all the
>    subnodes needs it. I'd say yes, but the brcm,nvram binding
>    doesn't have them neither.
> 
>  .../nvmem/layouts/kontron,sl28-vpd.yaml       | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/layouts/kontron,sl28-vpd.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/layouts/kontron,sl28-vpd.yaml b/Documentation/devicetree/bindings/nvmem/layouts/kontron,sl28-vpd.yaml
> new file mode 100644
> index 000000000000..0c180f29e880
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/layouts/kontron,sl28-vpd.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/layouts/kontron,sl28-vpd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVMEM layout of the Kontron SMARC-sAL28 vital product data
> +
> +maintainers:
> +  - Michael Walle <michael@walle.cc>
> +
> +description:
> +  The vital product data (VPD) of the sl28 boards contains a serial
> +  number and a base MAC address. The actual MAC addresses for the
> +  on-board ethernet devices are derived from this base MAC address by
> +  adding an offset.
> +
> +# We need a select here so we don't match all nodes with 'user-otp'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: kontron,sl28-vpd
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: kontron,sl28-vpd
> +      - const: user-otp
> +
> +  serial-number:

I will leave it for Rob to ack...

Best regards,
Krzysztof
