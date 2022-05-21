Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13E1452F7D4
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 05:03:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354409AbiEUDDV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 23:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347782AbiEUDDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 23:03:18 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C14D195BC2
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 20:03:17 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id v22-20020a05683011d600b0060aeae0b599so3344058otq.0
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 20:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=iXC9iZNjKmQ1eM7aHBeF/bE9C630CTpntf6Q84d5u6o=;
        b=hmJCr2aIfOiTE4SJ8sFjyWEHTBHGRPk3e87aK4iDcFte9TsADuQj/obm9fXKfGOfz3
         hzJd7BiWkAZ4YkiaeIc84hveESITKP3lpGHjOGlKoTssgOWy1NhVYOXe+tw++V+gSgIa
         RBg3DXclV7LE6uvzxnh+7k/+KsbfUqNKPjIoBg7oUnLqnpRIOESe+/xhzZ9vyPIzYN9w
         vG42WtbHZNPsA6pZSe9eyHtk/bcOcdHGIrZKXeIxLeuXhd2Cq+Mc8yWxHmpi/MTpXAjt
         sR3ABM7JnfpKRCZUidrDY7Zxf8wejXbFKEehwyVjd5Y+UQTxVkoqnGMSmGbFvLdiMuOc
         NDPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iXC9iZNjKmQ1eM7aHBeF/bE9C630CTpntf6Q84d5u6o=;
        b=Yl++EEO2fsdc78jc2lOUJsr7icCj7+43Yi3Ws6QZfCCQh7DrIZp09ZswDqnk532OaF
         lJvWDz+/SE58NSB4Qq7rYLJZDWktw8Zo0YXgZGSuL0Qznda7ktLu4wYyV7mWG7AAUxs6
         zt2QBTFO+xrtoASUSUEPThFeJNWS5lmQnOLGLRem0Bw4PnbxrkM/PVOSJcpZgfXOhjFy
         9PFC/pXFWVOMMQzCicWpftLH3qll9Xbnt+FvDvkGQVXuFiji2lsiQ2R0TeKW9YN+87t8
         UzgQijKpp1TEZNXVVovRdw9mm2kIIEjW8MXI1Yya+Gqs/rEoJKo16wZIQkxph8Na0DFE
         ehYQ==
X-Gm-Message-State: AOAM533n4apTAQ46xSHl2EK1yCk9S0tdZ6W8zQGzK2N43GsRoUXyI6Nb
        eW7LEn5QxkxdSl10gcjl25YKMQ==
X-Google-Smtp-Source: ABdhPJzf33hk+36nmQpALrQdURXvyXLsraIvq6uXSq7USAyA6BEgzR4igq3aDtnHAlZc/FbBD7CWmA==
X-Received: by 2002:a05:6830:4d0:b0:60b:401:69df with SMTP id s16-20020a05683004d000b0060b040169dfmr110098otd.289.1653102196547;
        Fri, 20 May 2022 20:03:16 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b7-20020a4aac87000000b0035eb4e5a6d6sm1848596oon.44.2022.05.20.20.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 20:03:16 -0700 (PDT)
Date:   Fri, 20 May 2022 20:05:33 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Harsh Agarwal <quic_harshq@quicinc.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com
Subject: Re: [RFC 1/2] dt-bindings: usb: dwc3: Add support for multiport
 related properties
Message-ID: <YohW/W3Mk0J0AKVt@ripper>
References: <1652963695-10109-1-git-send-email-quic_harshq@quicinc.com>
 <1652963695-10109-2-git-send-email-quic_harshq@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1652963695-10109-2-git-send-email-quic_harshq@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 19 May 05:34 PDT 2022, Harsh Agarwal wrote:

> Added support for multiport, mport, num-ssphy and num-hsphy
> properties. These properties are used to support devices having
> a multiport controller.
> 
> Signed-off-by: Harsh Agarwal <quic_harshq@quicinc.com>

Please do run dt_binding_check on your bindings, even though they are
RFCs.

> ---
>  .../devicetree/bindings/usb/snps,dwc3.yaml         | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> index f4471f8..39c61483 100644
> --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> @@ -341,6 +341,35 @@ properties:
>        This port is used with the 'usb-role-switch' property  to connect the
>        dwc3 to type C connector.
>  
> +  multiport:

Why are you inventing an of_graph lookalike here?

> +    description:
> +      If a single USB controller supports multiple ports, then it's referred to as
> +      a multiport controller. Each port of the multiport controller can support
> +      either High Speed or Super Speed or both and have their own PHY phandles. Each
> +      port is represented by "mport" node and all the "mport" nodes are grouped
> +      together inside the "multiport" node where individual "mport" node defines the
> +      PHYs supported by that port.
> +    required:
> +      - mport
> +
> +  num-hsphy:
> +    description: Total number of HS-PHYs defined by the multiport controller.
> +    $ref: /schemas/types.yaml#/definitions/uint32

I'm expecting that you wont' have any superspeed-only ports. As such
this number would imply be the number of ports listed under the node.

> +
> +  num-ssphy:
> +    description: Total number of SS-PHYs defined by the multiport controller.
> +    $ref: /schemas/types.yaml#/definitions/uint32

Can you please explain why it's necessary to specify usb_nop_phy?
Wouldn't it be possible to omit the phy in the case of a HS-only port?
In which case this could just be calculated as well.

Regards,
Bjorn

> +
> +  mport:
> +    description: Each mport node represents one port of the multiport controller.
> +    patternProperties: "^mport@[0-9a-f]+$"
> +    oneOf:
> +       - required:
> +         - usb-phy
> +       - required:
> +          - phys
> +          - phy-names
> +
>  unevaluatedProperties: false
>  
>  required:
> @@ -369,4 +398,30 @@ examples:
>        snps,dis_u2_susphy_quirk;
>        snps,dis_enblslpm_quirk;
>      };
> +  - |
> +    usb@4a000000 {
> +      compatible = "snps,dwc3";
> +      reg = <0x4a000000 0xcfff>;
> +      interrupts = <0 92 4>;
> +
> +      multiport {
> +
> +	MP_1: mport@1 {
> +          usb-phy = <&usb2_phy0>, <&usb3_phy0>;
> +	};
> +
> +	MP_2: mport@2 {
> +          usb-phy = <&usb2_phy1>, <&usb3_phy1>;
> +	};
> +
> +	MP_3: mport@3 {
> +          usb-phy = <&usb2_phy2>, <&usb_nop_phy>;
> +	};
> +
> +	MP_4: mport@4 {
> +          usb-phy = <&usb2_phy3>, <&usb_nop_phy>;
> +	};
> +
> +      };
> +    };
>  ...
> -- 
> 2.7.4
> 
