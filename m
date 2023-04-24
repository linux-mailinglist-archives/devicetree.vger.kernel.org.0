Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B863D6EC73E
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 09:38:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230507AbjDXHii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 03:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbjDXHih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 03:38:37 -0400
X-Greylist: delayed 561 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 24 Apr 2023 00:38:36 PDT
Received: from mail.tkos.co.il (guitar.tkos.co.il [84.110.109.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DA89E5E
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 00:38:36 -0700 (PDT)
Received: from tarshish (unknown [10.0.8.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.tkos.co.il (Postfix) with ESMTPS id 5797E4404F7;
        Mon, 24 Apr 2023 10:23:42 +0300 (IDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1682321022;
        bh=XHwsNYSyddbcZ0eBeUbQcTkX7mLZbWKcMkL8Ov5XefE=;
        h=References:From:To:Cc:Subject:Date:In-reply-to:From;
        b=s1i+ekXFlp8zUzIeqU2X20RSWJ9RXo1hUi7PQfe3VweXEN/u9Kcc2HVR+bRfspKl9
         bpFFl1ZkH4dZWxUsb3sYWiBfvFHdnO9az3GQ0va9ke0HGB1Z+gBqw44sPX8GdAHta2
         73RapCD22NgU6L3lmJiHulMCf7ZIc+QF2brAsTGxAho0Gl6JPubqmfoGxMux9MwJaC
         qXm2F/4lczX6Qy11RDTos7jkef3rMbQb4r52rBMdeR36ivkjpabK4vWGxuRC+oqP5I
         DDEoV5gAOHgOgbIP/1AOFVTi7Ucd0OXCugVmXot9Shyf4yX4tYD3lIPqyu7m4MbBDs
         mrd4l89rkn+7w==
References: <8ced22f59980fdfdae869acb91119dadd34987c0.1672847681.git.baruch@tkos.co.il>
User-agent: mu4e 1.9.21; emacs 28.2
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, Alex Shi <alexs@kernel.org>,
        Yanteng Si <siyanteng@loongson.cn>
Subject: Re: [PATCH] docs: dt: fix documented Primecell compatible string
Date:   Mon, 24 Apr 2023 10:24:59 +0300
In-reply-to: <8ced22f59980fdfdae869acb91119dadd34987c0.1672847681.git.baruch@tkos.co.il>
Message-ID: <87sfcpbuwo.fsf@tarshish>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob, Krzysztof,

On Wed, Jan 04 2023, Baruch Siach wrote:
> Only arm,primecell is documented as compatible string for Primecell
> peripherals. Current code agrees with that.

I guess this fell between the cracks. I can't find this patch in
patchwork. Maybe the Chinese text made patchwork reject this path. But
the email is archived at lore:

  https://lore.kernel.org/linux-devicetree/8ced22f59980fdfdae869acb91119dad=
d34987c0.1672847681.git.baruch@tkos.co.il/

Should I send separate patches for the main document and its
translation?

baruch

> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  Documentation/devicetree/usage-model.rst                    | 2 +-
>  Documentation/translations/zh_CN/devicetree/usage-model.rst | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/usage-model.rst b/Documentation/dev=
icetree/usage-model.rst
> index b6a287955ee5..0717426856b2 100644
> --- a/Documentation/devicetree/usage-model.rst
> +++ b/Documentation/devicetree/usage-model.rst
> @@ -415,6 +415,6 @@ When using the DT, this creates problems for of_platf=
orm_populate()
>  because it must decide whether to register each node as either a
>  platform_device or an amba_device.  This unfortunately complicates the
>  device creation model a little bit, but the solution turns out not to
> -be too invasive.  If a node is compatible with "arm,amba-primecell", then
> +be too invasive.  If a node is compatible with "arm,primecell", then
>  of_platform_populate() will register it as an amba_device instead of a
>  platform_device.
> diff --git a/Documentation/translations/zh_CN/devicetree/usage-model.rst
> b/Documentation/translations/zh_CN/devicetree/usage-model.rst
> index c6aee82c7e6e..19ba4ae0cd81 100644
> --- a/Documentation/translations/zh_CN/devicetree/usage-model.rst
> +++ b/Documentation/translations/zh_CN/devicetree/usage-model.rst
> @@ -325,6 +325,6 @@ Primecell=E8=AE=BE=E5=A4=87=E3=80=82=E7=84=B6=E8=80=
=8C=EF=BC=8C=E6=A3=98=E6=89=8B=E7=9A=84=E4=B8=80=E7=82=B9=E6=98=AF=EF=BC=8C=
AMBA=E6=80=BB=E7=BA=BF=E4=B8=8A=E7=9A=84=E6=89=80=E6=9C=89=E8=AE=BE=E5=A4=
=87=E5=B9=B6
>=20=20
>  =E5=BD=93=E4=BD=BF=E7=94=A8DT=E6=97=B6=EF=BC=8C=E8=BF=99=E7=BB=99of_plat=
form_populate()=E5=B8=A6=E6=9D=A5=E4=BA=86=E9=97=AE=E9=A2=98=EF=BC=8C=E5=9B=
=A0=E4=B8=BA=E5=AE=83=E5=BF=85=E9=A1=BB=E5=86=B3=E5=AE=9A=E6=98=AF=E5=90=A6=
=E5=B0=86
>  =E6=AF=8F=E4=B8=AA=E8=8A=82=E7=82=B9=E6=B3=A8=E5=86=8C=E4=B8=BAplatform_=
device=E6=88=96amba_device=E3=80=82=E4=B8=8D=E5=B9=B8=E7=9A=84=E6=98=AF=EF=
=BC=8C=E8=BF=99=E4=BD=BF=E8=AE=BE=E5=A4=87=E5=88=9B=E5=BB=BA=E6=A8=A1=E5=9E=
=8B
> -=E5=8F=98=E5=BE=97=E6=9C=89=E7=82=B9=E5=A4=8D=E6=9D=82=EF=BC=8C=E4=BD=86=
=E8=A7=A3=E5=86=B3=E6=96=B9=E6=A1=88=E5=8E=9F=E6=9D=A5=E5=B9=B6=E4=B8=8D=E6=
=98=AF=E5=A4=AA=E5=85=B7=E6=9C=89=E4=BE=B5=E7=95=A5=E6=80=A7=E3=80=82=E5=A6=
=82=E6=9E=9C=E4=B8=80=E4=B8=AA=E8=8A=82=E7=82=B9=E4=B8=8E=E2=80=9Carm,amba-=
primecell=E2=80=9D
> +=E5=8F=98=E5=BE=97=E6=9C=89=E7=82=B9=E5=A4=8D=E6=9D=82=EF=BC=8C=E4=BD=86=
=E8=A7=A3=E5=86=B3=E6=96=B9=E6=A1=88=E5=8E=9F=E6=9D=A5=E5=B9=B6=E4=B8=8D=E6=
=98=AF=E5=A4=AA=E5=85=B7=E6=9C=89=E4=BE=B5=E7=95=A5=E6=80=A7=E3=80=82=E5=A6=
=82=E6=9E=9C=E4=B8=80=E4=B8=AA=E8=8A=82=E7=82=B9=E4=B8=8E=E2=80=9Carm,prime=
cell=E2=80=9D
>  =E5=85=BC=E5=AE=B9=EF=BC=8C=E9=82=A3=E4=B9=88of_platform_populate()=E5=
=B0=86=E6=8A=8A=E5=AE=83=E6=B3=A8=E5=86=8C=E4=B8=BAamba_device=E8=80=8C=E4=
=B8=8D=E6=98=AF
>  platform_device=E3=80=82


--=20
                                                     ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -
