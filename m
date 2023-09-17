Return-Path: <devicetree+bounces-893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4567A386E
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 21:36:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F71B1C20BCA
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 19:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBE0A63DE;
	Sun, 17 Sep 2023 19:36:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3B753B4
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 19:36:06 +0000 (UTC)
Received: from sonic310-11.consmr.mail.ir2.yahoo.com (sonic310-11.consmr.mail.ir2.yahoo.com [77.238.177.32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDB24124
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 12:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694979363; bh=XGUFTEtX56UUAn9r60nv9VH7rWEmZ7X4qt4RPcuxz8M=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=rx0GHELAMTAnblFwxLL39Nx9pQzeAXanj4PMS0xR/JOIqIWCyIUEWHDZ+RjN2OhoISFU/a2CaLnCrksBJ6+B6gc1NvSHgvQ6pBK7tGdkrVXvhIX0HLIsaf6H7IDKWwtWKaUqMguSZ/a2Vzj8SFzhwd/d3QmR5HaHsz5eZCApWUSGQxs24VCe9P52z879hHmz5CSoKxcaD7E+n8vSv8ClAjTMU9TgstUQ51ooroxKsSaDeM+Z3+Ejn1QxGLZ0M1nPzjnMLMcuMk+kidnnXhdTgamKQIPaUnf9bcP6jptVkG0WKQ59mV9kI8Htf6afKhq2W4AnFiIF2e/JnMyaulogaw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694979363; bh=e5uMcYuH7HGC0PbSHgaud5K86jVCACSeubm91CAsrKM=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=BbxUyedGcohMeaQcILGFFLOcfJTtTbvcYTiDTBSBBiqDFhi/w7URq9k+Jv7Ru9Bb6DufYaUdurm6zar/4iTsb7ma3JvelsBNI01geTZ+k6NMLcQQ6K79sAZky+L5V6VDkoC8WjjbuqP/FAHQmzDmAlVbOHTrX/Ebyb7cjTyVqM38dYnxaEwVuPIy0jogMo3OBefG6gaYavnURpC/aJluACEDX6/YaUC+GDyCs11B1+Jv7C2vKLtH+9L4ILZUHHjqD8eGy7Z/y4+idZ90ZKt1O7QsWfsGORLLykfPzFwj+QgV1t09G7ZSbVT9vvlZA/hWi17+JOCEMnrjtizOMSX9BQ==
X-YMail-OSG: TVHbyIcVM1lCnYEoFC7F5.g0zAkg4w.CHz5ZMvKTXyEK_w_vZIlQ057xkO2zxNm
 .xFykwadZR7p91ejdceXT8Jm8d2BodLjtxWABhkmHSx8Ia6jmQTL7Ulpv6fTAFMDbSt5Ld_uU3a_
 1vSsVozuBVK0.7eQCAhsFxrXcFdDgBqWHfnJjhA4tL2vvrHtuTfQ.APhVtB_jZyrEXbLoY6rlnC5
 H0Spf8OTrqDbls0pq30N8SqDwVPXr9KPZMKPZok0RXcxAAlPWuN4sDioSF5nbP5wTG7XzG2jIqZi
 9hzSXWNjEVx6AsO5VOuIN.kXyZkWsZnm2C.BLrZ9MkjQrU6dm7F1tA9XCFfKNRW8_f.lj1ZIojJ9
 EmV7XEy9sL61VFoeb_pXLa7CHiAxZqeOda3ExKjx_0r3USF8QTuF257gYi9gRdGiRnZfWrgWQix0
 YDlqInOcLD5QED_dmbJ7i9QzO6Lmaibarg_i9MxkShwnrL4L44TEbWkq4MSid261A3FuFvElk52L
 ka1Kt2iX3FwKL2RJiCYHAiZ9p_b_7fSUPLsJM_GAuwCIMDQkDxg.Ps98sbW9RVc1PlkYBEmu7RDX
 jeCtZz.SsJ5tW_L2vlrcdmwzBMyR.flP1wbZ3PzaJHCfYXWZ0347ZkcBUr.mmQDi.IYcf9lnuvJd
 bVBJPCoso6K8nqZwbPSs1Ev_GZsgcKQR9TCDpaUaP0D5mwMnZZGi2ML2yV7xFndU5dWN_76IqMuY
 U.kXAegNHWwP_z8B0wFqP4548.5keJwaE18MYF.lQWgOg8tohGc25TKWWI4JHUBEOCPA_rla4QXI
 pueXDXkUs27rpX7JhihaUSQGF2Ls5A9MlM6FOdOykhTittBLr9wf_hgPLODbJdq5wFj0uxCg9z68
 BKPLigXaX84.1DhF2x8g_srdHpFjd1r88JdtnooZHmpiq8MvvxPKorv7JLS7JjZIUuFvNrM0bT0.
 .UFTpNmV8tF7JUt_47I2eFC7fgtHVJAd0myNygrb_9TlCBqIWLm1laCZGEFRMnTIAMevxCg.IEla
 hI4cVRipfJN2G43qeH2lmfL_hIUt.qckRiLtzrK4jsam3U2T5eHLIPAoDySPIieMKbrU3DTuAo8Z
 f9gjzf2vAhsGhpVjHGkAt0SIYrFh8CgBz7IJr8sNIG284qv0aYIwWrDylotcGnvLdvYwmiEPnhR7
 Hms6fWhjItZjYX4x4_VblAO_IkZ0_T5U07r4gWAm81vJi4pxsHmTumMEswnUPUa5_wzYcMywSuZo
 9JJnlnC06FL.6kI2r_fjJriYzrN56FDIqe23Xv7zeOTqWR5KmQ0Wwj26JvbOo_ZW.bFmoE3gWUyw
 feh2rXkSyFjUWZyl7DpZtBrPkpgXEdetxuEbRWvKBUDLuMWt90YR6x_g4PzwAwr.mf404Kph1JNw
 FjstWrdOuqsbqV3PHiJNFzXn_EU6GEpFjO1R9vnsRw.tSt.nhco3MNMdYEPzDDnpB1BulBc.IsPJ
 Ac..H6sizWOKqEly3jhPH9tbVaYLDouerHk2Sm0cU.agbXhIwknN3mHt09UzsMcmYFwgA5ayaQCE
 ydRA2OecKzaJGNBif5MzO.4F1x0rPRX8ruBd_65TepB5WBKwdUngEGYnL3Snzn4bd.fK4BOSLpaZ
 e3IlQwyGUzSORwcKGi4AxTXDAPjW5cns9wDLimo7JtDgS_1vgI92C25G.4dwqFhOBKUDIu_DzQe4
 NqL4OwrIN_1LERiipqoCJeCFrKaF4aUOw1YV8Vns0gCeCryT.70cUfuX_xWz_qQy_q642c0dhNlo
 h5asSP4eB_.rgbJZRX5WVMeE_6ECrQsShPhbcHGy21E7Y4KXRsrDChgd5nYP5yqfYC_A9NudvUk1
 SVQWBJdF2sfnolyCxHzMXB2sKic44mNcvqUnXPp0m3tmIV1ZN0BSHSs78rINqwZmJBJRxer1Dvla
 1eItAsJwhsYzLxj4mg5vmKSUlQhEti_byDCA6ehED7a.k81NfFmolPw2C8bpj4jaECM7HojdsSbg
 lIDejuYTqjBl6Bc0fBhXgFV.bwZ1mmGQRNdVai_coNems.sIePVJy0Wf1MZ1lMgxSCGH7d0kQvHt
 1QbX83WZICoEFL7fhvdhIhra0cACFOgTTR4k7ocdphZTlyQQV4MBG8HMm5rMzMHRve6Ln_RG.rgo
 bY2ZS8061qv91mZpvhkUWU5xap9XrsuFBIpyF2kMtMKE93zGVQk3zzbRKeLW99eTmB_jqnHfaSOQ
 6KY38_TK7Y5ksKF3qBrGbld1vW4c5_tIv60VkDGzsw1E9pJ8cCmAqgVNdyQt08K0L
X-Sonic-MF: <n3q5u8@yahoo.com>
X-Sonic-ID: 807355c8-ac7c-465d-baf7-0e78a2bd17a5
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.ir2.yahoo.com with HTTP; Sun, 17 Sep 2023 19:36:03 +0000
Received: by hermes--production-ir2-8464d7bd7d-5jx8g (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 5a5cc63ee8f77d2e1dabbe49173895e3;
          Sun, 17 Sep 2023 19:35:58 +0000 (UTC)
From: Nik Bune <n3q5u8@yahoo.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@microchip.com
Cc: n3q5u8@yahoo.com,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert txt to yaml
Date: Sun, 17 Sep 2023 21:35:56 +0200
Message-Id: <20230917193556.10783-1-n3q5u8@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230916154826.84925-1-n3q5u8@yahoo.com>
References: <20230916154826.84925-1-n3q5u8@yahoo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello, thank you for your review! 

On Sat, Sep 16, 2023 at 10:37:23PM +0200, Krzysztof Kozlowski wrote:

>On 16/09/2023 17:48, Nik Bune wrote:
>> Convert txt file to yaml.
>> Add reg to the list of required properties.
>> Add mainteiners from ./scripts/get_maintainer.pl output.
>>
>> Signed-off-by: Nik Bune <n3q5u8@yahoo.com>
>> ---
>>  .../watchdog/atmel,at91rm9200-wdt.yaml        | 31 +++++++++++++++++++
>>  .../watchdog/atmel-at91rm9200-wdt.txt        |  9 ------
>>  2 files changed, 31 insertions(+), 9 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
>>
>> diff --git a/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
>> new file mode 100644
>> index 000000000000..e9706b9c1e6b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
>> @@ -0,0 +1,31 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
>
>How this copyright appeared here? Why are you adding some 2022
>copyrights of someone else?

I copied it from the neighbour file atmel,at91sam9-wdt.yaml.
I assume I should leave only "SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)" here.

Thank you!

