Return-Path: <devicetree+bounces-894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD367A39D4
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 21:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02D7C281801
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 19:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C806FD6;
	Sun, 17 Sep 2023 19:55:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558D56FCC
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 19:55:27 +0000 (UTC)
Received: from sonic308-18.consmr.mail.ir2.yahoo.com (sonic308-18.consmr.mail.ir2.yahoo.com [77.238.178.146])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66176133
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 12:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694980523; bh=exGFmmiUlDAkQl0qlIAKth0FXHVvZNbHDCZ30SEnmMA=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=N4aEZKGuiqTcBNlJePBbjFe6xfuTpAVD6PHBeWBi2EtTeBDDQ8g1BltJvLdB0vaY4RfnkQxwv6Oo1yQy3cik3p5EhlG2TzIG2prokaYX1odcRMN2dZ5JvplX0+UyAxezqb1J8kC9zdTjRk6OgTbwPUNsKAzQ7Xrd8cuGcSc2C22UpJnSa3u1pRYoxyEIx86XdXVFvacSgfLpqBuzR7HqBF1de/PuAJUnAGQQwOGUzAITsIwHmkEtsLZWfyZFSzqMZgHaz/6iN2SodJMJH+xbU6fJzQ52LwkqtOIx9oJB9C654Rw1DcnlHMAJ2L/RhQq719Y3WKdkkJGYsKJbsu9iEQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694980523; bh=idHeqO3XNcx2Zn2jN0QIL/7gDPrnQTVMf4JF2ZrI+lq=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=cjQrlee9ldSc9EME6VE30ycg9RZQJL5rxcEF2M86KXRAM9YCC2DGPryBmbh6N6wKIciSiTcm4+5PZd5D9TwzAoAJV1i9Td7ZiYQqmeUqAnlYjChb8rOYm6Czvidny3inAc7rzIItQHRFWndeeaHuaR2+lRrfjOpUPrVDCb3TDOQqWwZ63B95oybsJomqvUv0MLP8pTDCndVBhfPiUaJppwpHd6Y/+3Ost7rg8VxVT6PZVaxpGQ7rU0a3IqDeASdjZ//S9wWv6//8jh11a6zKEM51Ps6kbC0mIX/PuqdT4jf5JjKdrhpt8wwM1cYPwDF5v+xNqEGtIil/dgmQ3l1tvQ==
X-YMail-OSG: on47iaMVM1mu2hlgbGo3y4BsS37IthUxI2xzd.BA6n_MYd_9x9HvBha9HpQzooT
 B4b3kOOMDbtRfUuddziWTvnUj8CAyMxI4sAU0i.kb.Yvw0N5nKmrNRWMdiR77gjNzyofgBl1RZa0
 IV.39MCLZ6SAuOIfl5RBMrvgDY.sx0CL5UiTOLcDeY9C_YBRBuA71es1IA5gSW_eOlfbFziwbVJf
 2zkfIYU9eEcwRuHd3gRyypZ6yBQ8qUM.jJMRJjOfTJbbBu8Qo6e0NjtwChydQ3CGSHQRgvqVlA0e
 d1pwB2ig7F2jBLg5Ph5EDEkLz9b.aF1EIhIgQKa5VV.gi8Ntik68a4UIB.hnQ3_AOG23omwhDUMz
 G.E7TgeGl8hbb65pO6HwyuEv7qp.rQScSSOd5xpL55CZssnEEUyRdsomeVQgoxWi8uzetLqI9CAu
 v.CM35FTvpuK2XC.tMcAiCUwPJT65q1hXThGovzUdhuMNxPNEp9MpeTigmxQVtZqbBi3B9XuyhCp
 DlCs7N.38ZBUEQZyZ26kpJlUkemZys0J4iez1cvvdnZbzDdAG1YdGk1fsLyk_zQ8bo9nMjSls0yC
 NE3lseh8mJI9O1Mf3lM1z_Z2VeSQvkKReR.CjLzJ9q7pPyA6cuuAsza1rRT9zTZaa8A26k8XyHoq
 vtsCix6brzuUT0VCAlkO.lmR6FMcuZffwffyIJjeW0A66xBRkqy_cGVfZqPfpZrWfKFlJLjeBRXF
 1G.AUoYkIy39F9JDUDdI81nMH6CYICIhCJcUb0uZLCwA1QogneFwCYt7eF9qprMThVCb8QhlR03q
 u2cZiqrtYgraxD6ObozmJf2vQ_11fdNwsYGjMjwnrPpBBMCN7kyxpZAD71tEo4nPx.v6Acd6yRxp
 BriJIBs0j1VusDV7FBEMIKEalYcEGHk75uk1DXrLv75Ciybi4VyDjSWTlMKLeNlfiIiwwT7F40jS
 qs2bzXpkmnv.czJM7ckk8Flf6ed6H5t1nKcMwitWZG4fIeM9ZttRo640qqZjnPPTNzAECJGBluPk
 P8SjgBbT6uFctvQmrf4tv2s02Mi8EbS.qjlKSZ7b09ym.q4xlGM1lVTjjcqXJ61alZN1A.v3Imkh
 Ivkhkud6_bWKCuyFhk7MBDcx3hBhyefc2GRGsS.0xUR4MTskxsFfhslLREx_nFRxKhYcsgi2t2Ob
 S9nIfzgtc2Xi2upMDMc6WS1yOlZpKoJ5RdWWkfX2.vgaenSHC.yFfGMKxxwmnHGxlqcdOiqanRYE
 dKdIwtSYWrWVV_PyoWaAXSTg.cjrRxeunlE_N0UUnDCo2Eg8bHBT335ipWdnbJpWnMwFDiVjo5RB
 f8Hz92fFdH0GZ4u8ms61HA5l7pI4Zecb1mbYZg3F8W.Faz7VsUTjfK4vYPH53qhq.ES7sIBO8BEu
 h76Q5h8fFjMNGtiCV2l8jGFxt_HoomBz.6cdgHYIt0u.NjNbWIkukzezGVvfkCPZEgpf3Jsur6js
 FoDR5sG5nfl4QqoxnqT8VRi5vkH_JrSqkJlJbNbv5gxdp2m50X.aJJLsxcUKQddpssZXsx4ma4De
 8g.F97kXpVeLIF6sqnQNupKc2uihkvrg9oaumLFjhf2e_zBewcat1s8wP4pkfGrzZzDeEEZDAn4_
 NNHWfUcRcIwhoeJgZJZo8jDpKFjuAF2_5DFf2idddk23COGmd3zNZPYJzbD_qxp2RHIBQYAxV73p
 lUJBj6qtqndv5HZo7O5KRwzIPw3JDPQZ1DhtymnL_.hgI.KUtVfD7UyfbGzc6LVIUAWFu69rEDNI
 F0UqssRjlUMx6eJuUQl4dfK8d7ykBX.xt4DBim6OnbTMUT3sspv7bjLnlt1Ethl_7Ik3bZXah_xH
 chDXQlQsO91ejbfA8EgiBaKenL1XaWMeswwblJE0CjonLI09wT1SAVBNdI4ywsTDwI88Ex6M9d9g
 PMU5TCsYh3NOV7SqwgxOls8Tv3.Y5MelXA8oJe10jdF4oZ1xoVm4kizJmWq_moPdL4NnokrFKAwD
 6z1CpW.A6vTDGnF5Znj46zSCVUio8o1GqB0BNTDDk7eQKtO5t4Ls5erTS3dDcerQV7B0MB7UiBkL
 E52BnEv2Xt5jMDohdyzOwC1irqqGDu.MXfGtEGWXtp8I1Xan8F4AMmL4r2vvxBg10uiUVvuurLhy
 CPthKsi58SBl.jGzOZa02vaZFEhApr0CLE4xr2Q4E9PoQeJJScsf1hpsyWlG_RQ5kD_GuDwKpURS
 7pes6nsNAkyD0eyLKIOI.sFVubBQElHSbPo1ZtLj_JO6fNVN.LdFeFasf_m7ZBlzy
X-Sonic-MF: <n3q5u8@yahoo.com>
X-Sonic-ID: 4dc2fd3a-3249-468e-b812-6a3b084f07be
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ir2.yahoo.com with HTTP; Sun, 17 Sep 2023 19:55:23 +0000
Received: by hermes--production-ir2-8464d7bd7d-kh7kx (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 37c72f4592bfe4e25030148d6d885a58;
          Sun, 17 Sep 2023 19:55:22 +0000 (UTC)
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
Date: Sun, 17 Sep 2023 21:55:20 +0200
Message-Id: <20230917195520.11987-1-n3q5u8@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230916154826.84925-1-n3q5u8@yahoo.com>
References: <20230916154826.84925-1-n3q5u8@yahoo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


>On Saturday, 16 September 2023 at 22:38:17 CEST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>
>
>On 16/09/2023 17:48, Nik Bune wrote:
>
>> Convert txt file to yaml.
>> Add reg to the list of required properties.
>> Add mainteiners from ./scripts/get_maintainer.pl output.
>
>
>...
>
>> +---
>> +$id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Atmel AT91RM9200 System Timer Watchdog
>> +
>> +maintainers:
>> +  - Wim Van Sebroeck <wim@linux-watchdog.org>
>> +  - Guenter Roeck <linux@roeck-us.net
>>
>
>No, these should be maintainer of device or subarch, not subsystem.
>

Is it a particular way how to determine the mainterners of the device? 

I have checked nearby atmel devices. They have Eugen Hristev <eugen.hristev@microchip.com> in the list of maintainers. 
Also I have found the similar patch, which looks like have never finalised, https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230525125602.640855-5-claudiu.beznea@microchip.com/ 
it has 
maintainers:
  - Nicolas Ferre <nicolas.ferre@microchip.com>
  - Alexandre Belloni <alexandre.belloni@bootlin.com>
  - Claudiu Beznea <claudiu.beznea@microchip.coam>


Thank you. 

