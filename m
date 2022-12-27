Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 493A7656B9B
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 15:14:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbiL0ONx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 09:13:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231702AbiL0ONw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 09:13:52 -0500
Received: from smtp-out-06.comm2000.it (smtp-out-06.comm2000.it [212.97.32.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C14441B1
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 06:13:48 -0800 (PST)
Received: from [127.0.0.1] (unknown [158.148.10.108])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-06.comm2000.it (Postfix) with ESMTPSA id E4BFA5616C5;
        Tue, 27 Dec 2022 15:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1672150426;
        bh=0EDI6spFGWb5CNUcg7p1g/g3qrwN2g63cw6pPkVzCSM=;
        h=Date:From:To:CC:Subject:In-Reply-To:References;
        b=xz8kBh/1HXsR+Rh4kblUepjBo1RAa8t+yU+YZehgAyigHB+LRGzm6rzzvb8SHoVlF
         QpvdLfdwP5nhV7fGoExjNqHlRqiTMubzGBWySZS2FfyZgtymGkrIuEXrxnKlDOynOT
         FIiqY+Zb8FAgk5SDT9ZjUmY29a2Ko0mh5XueRoPi2BdzDUKNvOIQ18hPVcC1/B6b9k
         gbjthtnpT+Ze6Fg4SRnDKQzGPCE42J39w0bhnPCm75jjG9A6zWflHY4DF1OwKsUe2j
         bW8a37tmWTJlLG0lWz1FQFMuKspHtnEH2ifkPQKDnv/ODs7R7HQSNpgM4naEARXJus
         CEBKcV809wL9g==
Date:   Tue, 27 Dec 2022 15:13:29 +0100
From:   Francesco Dolcini <francesco@dolcini.it>
To:     Rob Herring <robh@kernel.org>
CC:     devicetree@vger.kernel.org, kchsu0@nuvoton.com,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Benjamin Marty <info@benjaminmarty.ch>, wtli@nuvoton.com,
        Rob Herring <robh+dt@kernel.org>,
        David Lin <CTLIN0@nuvoton.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Takashi Iwai <tiwai@suse.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v1_1/3=5D_ASoC=3A_dt-binding?= =?US-ASCII?Q?s=3A_nau8822=3A_convert_to_the_dtschema?=
User-Agent: K-9 Mail for Android
In-Reply-To: <167182349408.373865.10339766752503211557.robh@kernel.org>
References: <20221223170404.210603-1-francesco@dolcini.it> <20221223170404.210603-2-francesco@dolcini.it> <167182349408.373865.10339766752503211557.robh@kernel.org>
Message-ID: <C330A505-8AF5-4931-AE2B-5608CB0C32DB@dolcini.it>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Il 23 dicembre 2022 20:26:02 CET, Rob Herring <robh@kernel=2Eorg> ha scritt=
o:
>
>On Fri, 23 Dec 2022 18:04:02 +0100, Francesco Dolcini wrote:
>> From: Emanuele Ghidoli <emanuele=2Eghidoli@toradex=2Ecom>
>>=20
>> Convert nau8822 devicetree binding to dtschema=2E
>> Change file name to match dtschema naming=2E
>>=20
>> Cc: David Lin <CTLIN0@nuvoton=2Ecom>
>> Signed-off-by: Emanuele Ghidoli <emanuele=2Eghidoli@toradex=2Ecom>
>> Signed-off-by: Francesco Dolcini <francesco=2Edolcini@toradex=2Ecom>
>> ---
>>  =2E=2E=2E/devicetree/bindings/sound/nau8822=2Etxt     | 16 --------
>>  =2E=2E=2E/bindings/sound/nuvoton,nau8822=2Eyaml       | 40 +++++++++++=
++++++++
>>  2 files changed, 40 insertions(+), 16 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/sound/nau8822=2Et=
xt
>>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau=
8822=2Eyaml
>>=20
>
>Running 'make dtbs_check' with the schema in this patch gives the
>following warnings=2E Consider if they are expected or the schema is
>incorrect=2E These may not be new warnings=2E
>

Expected, those DTS files needs to be fixed, I'll have a separate patch fo=
r those=2E



>Note that it is not yet a requirement to have 0 warnings for dtbs_check=
=2E
>This will change in the future=2E
>
>Full log is available here: https://patchwork=2Eozlabs=2Eorg/project/devi=
cetree-bindings/patch/20221223170404=2E210603-2-francesco@dolcini=2Eit
>
>
>audio-codec@1a: '#sound-dai-cells', 'AVDD-supply', 'CPVDD-supply', 'DBVDD=
-supply', 'DCVDD-supply', 'MICVDD-supply', 'clock-names', 'clocks' do not m=
atch any of the regexes: 'pinctrl-[0-9]+'
>	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev=2Edtb
>	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev=2Edtb
>

