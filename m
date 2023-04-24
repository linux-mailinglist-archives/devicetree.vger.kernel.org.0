Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8EE76ED372
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 19:22:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231824AbjDXRWU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 13:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231411AbjDXRWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 13:22:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4E2E49D0;
        Mon, 24 Apr 2023 10:22:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4E7B960B2E;
        Mon, 24 Apr 2023 17:22:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEC43C433D2;
        Mon, 24 Apr 2023 17:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682356936;
        bh=vRchxoGONDLsdQXu3pWOn9hJRU+8zz+VSgEx5ZwQp3g=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=qjklnqkXoT2ZNMNl+YOmm7W2dOpTmZhHQifisVddeku4if4b+q0nuxmU2eixDQqlA
         xC0w/hYh5XYEdInVTnCXoifwOxAMrPvM6f9v1JLGxbzxQW1TJw9pg1HWzn8QjUBqOQ
         bvTMqxX5m823PYYOFEF6fO6UHhrCyAD5omaDDSzH7tccnRL46MyhmMHY6gZGcHcCGF
         4bNxsKqD/AfckwFLKyHFYJeJAx8HKyjEMir4mwNVZgtHu8IKzGNfi/R8rB87O5Qywc
         iqCCg6Hp6xTtzuQFywifRZqsIBFGPXt8+dLBawm182frgi5qQoEAujehaKky9AHzEg
         bEM5Qjy09L5iQ==
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-54f851bcd4fso55802637b3.3;
        Mon, 24 Apr 2023 10:22:16 -0700 (PDT)
X-Gm-Message-State: AAQBX9derpMO32El70V8z+srKiEyvqMf0G+sLJg3qup7hcaCdpIIF5oE
        TJ9Ch0xRWJV4BtZ7mcHw/VGETlZ1557p8uu4BQ==
X-Google-Smtp-Source: AKy350bGrcHLa8Z4fKfiBS0QdqyyMIbX57Jk7zjNqYte6lekd089C/7gzb+I4yTklErOpLURZMQJdeO7LZxpUUsSjP4=
X-Received: by 2002:a81:54c2:0:b0:54f:baf2:9732 with SMTP id
 i185-20020a8154c2000000b0054fbaf29732mr7972311ywb.31.1682356935612; Mon, 24
 Apr 2023 10:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <77db7543-cae4-695c-7c86-6562534d4e87@amd.com>
In-Reply-To: <77db7543-cae4-695c-7c86-6562534d4e87@amd.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 24 Apr 2023 12:22:03 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJcJsjnao0FGzx7e-vxYnUGC6S3_GRORq1KyDQzqX-3hw@mail.gmail.com>
Message-ID: <CAL_JsqJcJsjnao0FGzx7e-vxYnUGC6S3_GRORq1KyDQzqX-3hw@mail.gmail.com>
Subject: Re: dt_binding_check not reporting all errors
To:     Michal Simek <michal.simek@amd.com>
Cc:     devicetree-spec@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 24, 2023 at 11:38=E2=80=AFAM Michal Simek <michal.simek@amd.com=
> wrote:
>
> Hi,
>
> last week I found that dt_binding_check is not checking all errors with
> compatible string and I have no idea why. I have used 3 systems and behav=
ior is
> pretty much the same.
> I am on the top of 6.3 kernel with
> dt-validate -V
> 2023.5.dev3+g31cc52ae483e
>
> And here is the behavior.
> Two compatible string I see errors but if I break only one compatible str=
ing I
> can't see erros. Not sure if this is issue with dt binding document or wi=
th host
> PC setup. Definitely thank you for any hint what to check.
>
> Thanks,
> Michal
>
>
> [linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.ya=
ml
> [linux](master)$ git diff
> diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> index 098b73134a1b..fbd9754ab0a3 100644
> --- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> @@ -110,7 +110,7 @@ examples:
>           usb@0 {
>               #address-cells =3D <0x2>;
>               #size-cells =3D <0x2>;
> -            compatible =3D "xlnx,zynqmp-dwc3";
> +            compatible =3D "xlnx,zynqmp-dwc32", "xlnx,zynqmp-dwc3";
>               reg =3D <0x0 0xff9d0000 0x0 0x100>;
>               clocks =3D <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DU=
AL_REF>;
>               clock-names =3D "bus_clk", "ref_clk";
> [linux](master)$ make
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> dt_binding_check
>    LINT    Documentation/devicetree/bindings
>    CHKDT   Documentation/devicetree/bindings/processed-schema.json
>    SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>    DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
>    DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb
> /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.example.=
dtb:
> usb@0: compatible:0: 'xlnx,zynqmp-dwc32' is not one of ['xlnx,zynqmp-dwc3=
',
> 'xlnx,versal-dwc3']
>         From schema: /dev/shm/linux/Documentation/devicetree/bindings/usb=
/dwc3-xilinx.yaml
> /dev/shm/linux/Documentation/devicetree/bindings/usb/dwc3-xilinx.example.=
dtb:
> usb@0: compatible: ['xlnx,zynqmp-dwc32', 'xlnx,zynqmp-dwc3'] is too long
>         From schema: /dev/shm/linux/Documentation/devicetree/bindings/usb=
/dwc3-xilinx.yaml
>
>
>
> [linux](master)$ vim Documentation/devicetree/bindings/usb/dwc3-xilinx.ya=
ml
> [linux](master)$ git diff Documentation/devicetree/bindings/usb/dwc3-xili=
nx.yaml
> diff --git a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> index 098b73134a1b..0b8985bf9b0b 100644
> --- a/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> @@ -110,7 +110,7 @@ examples:
>           usb@0 {
>               #address-cells =3D <0x2>;
>               #size-cells =3D <0x2>;
> -            compatible =3D "xlnx,zynqmp-dwc3";
> +            compatible =3D "xlnx,zynqmp-dwc32";
>               reg =3D <0x0 0xff9d0000 0x0 0x100>;
>               clocks =3D <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DU=
AL_REF>;
>               clock-names =3D "bus_clk", "ref_clk";
> [linux](master)$ make
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/usb/dwc3-xilinx.yaml
> dt_binding_check
>    LINT    Documentation/devicetree/bindings
>    CHKDT   Documentation/devicetree/bindings/processed-schema.json
>    SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>    DTEX    Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dts
>    DTC_CHK Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb

'compatible' is how we decide whether to apply a schema or not (by
default if there is no 'select' entry). If you have an unknown
compatible, then no schema is going to be applied (except ones that
always get applied). The way we check for unknown compatible strings
is with the '-m' option on dt-validate. That's turned on for
dtbs_check, but off for dt_binding_check until the remaining 20-30
warnings are fixed. Also, I don't think that works in conjunction with
DT_SCHEMA_FILES being set.

Rob
