Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5E0E6D5018
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 20:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbjDCSOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 14:14:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233038AbjDCSOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 14:14:14 -0400
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCD271FEF
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 11:14:08 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id f19-20020a9d5f13000000b00693ce5a2f3eso16101274oti.8
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 11:14:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680545648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=diAU2gDNpfvEkf0KkvkJMk9DSdJLB8pM+UR1PjlRd1Q=;
        b=zhki2uT1JRuo8QiHzRmqPRFJWrqr14txdB/uaip5d42RTnSQmT25PcXI8JHvvsf6Ej
         +q+EHJx8mDPXMh9KY7fS1bHi+UiBP8Ex+DF2F9Wh/kfdZ7CqzsKTz6vQqrjkUl/yz9EX
         9vgGXqDL5KBwsatiRR7V8gT4K6kt0Jzt1nVBvOyrJAfkhF9u/+3nytfuOu9G6ySYku+w
         QEfe/ySRClIhRkjEMCc6CDji5esoU6ueUBQqFgPPsPNmN6hek+SF0UGzaIp7lAphU9rS
         admamaogB0gmItcOv1bXtvpzM6WYM2Eue53oJp7bsgyVFATMv+8b5M1xFEIJ+1ugkyNZ
         3DGw==
X-Gm-Message-State: AAQBX9cAhDa3h08+rv9ftVKtJ7N65xn6R7d/JYLtzT8aaiazU2IlDQjq
        4k+bynnmlUFzP1KaQjVEmA==
X-Google-Smtp-Source: AKy350YIttDvDJ7Vo5p8cx/PBF4e+AWAEha5v/UWeHolpwFR8Usk5pByB0bDAyqoZKGl66OTAz+Yfw==
X-Received: by 2002:a9d:6f8f:0:b0:6a1:7eaa:3836 with SMTP id h15-20020a9d6f8f000000b006a17eaa3836mr56953otq.5.1680545648143;
        Mon, 03 Apr 2023 11:14:08 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i26-20020a9d68da000000b0069dd3d98ec6sm4635107oto.44.2023.04.03.11.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 11:14:07 -0700 (PDT)
Received: (nullmailer pid 1277282 invoked by uid 1000);
        Mon, 03 Apr 2023 18:14:07 -0000
Date:   Mon, 3 Apr 2023 13:14:07 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@chargebyte.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com
Subject: Re: [PATCH V4 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Message-ID: <20230403181407.GA1242137-robh@kernel.org>
References: <20230331210840.4061-1-stefan.wahren@chargebyte.com>
 <20230331210840.4061-3-stefan.wahren@chargebyte.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230331210840.4061-3-stefan.wahren@chargebyte.com>
X-Spam-Status: No, score=0.8 required=5.0 tests=FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 31, 2023 at 11:08:36PM +0200, Stefan Wahren wrote:
> Even this binding look trivial, the actual hardware supports more
> features (e.g. sleep mode control GPIO). So add this as a dedicated
> devicetree binding for the Maxim DS2482/DS2484 I2C to 1-W bridges,
> which can be extended later.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
> ---
>  .../devicetree/bindings/w1/maxim,ds2482.yaml  | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/w1/maxim,ds2482.yaml
> 
> diff --git a/Documentation/devicetree/bindings/w1/maxim,ds2482.yaml b/Documentation/devicetree/bindings/w1/maxim,ds2482.yaml
> new file mode 100644
> index 000000000000..fd692a3a7400
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/w1/maxim,ds2482.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/w1/maxim,ds2482.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim One wire bus master controller
> +
> +maintainers:
> +  - Stefan Wahren <stefan.wahren@chargebyte.com>
> +
> +description: |
> +  I2C to 1-wire bridges
> +
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ds2482-100.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/DS2482-800.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/DS2484.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - maxim,ds2482
> +      - maxim,ds2484
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

To allow children, all that's needed for 1-wire is:

additionalProperties:
  type: object

> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      onewire@18 {
> +        compatible = "maxim,ds2484";
> +        reg = <0x18>;
> +      };
> +    };
> -- 
> 2.17.1
> 
