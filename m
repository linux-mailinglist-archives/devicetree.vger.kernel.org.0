Return-Path: <devicetree+bounces-950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D177A4176
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5F0D1C20D04
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 06:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C076ADF;
	Mon, 18 Sep 2023 06:43:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C9363DD
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 06:43:46 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7064818E;
	Sun, 17 Sep 2023 23:43:18 -0700 (PDT)
Received: from p5dc58a3d.dip0.t-ipconnect.de ([93.197.138.61] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qi7yI-003vCw-MG; Mon, 18 Sep 2023 08:43:02 +0200
Date: Mon, 18 Sep 2023 08:42:57 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: dmitry.torokhov@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, rydberg@bitmath.org,
 andreas@kemnade.info, u.kleine-koenig@pengutronix.de,
 Jonathan.Cameron@huawei.com, linus.walleij@linaro.org, heiko@sntech.de,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/4] Input: zforce_ts: standard properties
Message-ID: <20230918084257.6200041d@aktux>
In-Reply-To: <20230821171151.555091-1-andreas@kemnade.info>
References: <20230821171151.555091-1-andreas@kemnade.info>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

ping

On Mon, 21 Aug 2023 19:11:47 +0200
Andreas Kemnade <andreas@kemnade.info> wrote:

> Accept standard touchscreen properties to also enable specification
> of touchscreen orientation.
> 
> Changes in V2:
> - correct mail address in .yaml
> 
> Andreas Kemnade (4):
>   dt-bindings: touchscreen: convert neonode,zforce to json-schema
>   dt-bindings: touchscreen: neonode,zforce: Use standard properties
>   Input: zforce_ts: Accept standard touchscreen properties
>   ARM: dts: imx6sl-tolino-shine2hd: fix touchscreen rotation
> 
>  .../input/touchscreen/neonode,zforce.yaml     | 72 +++++++++++++++++++
>  .../bindings/input/touchscreen/zforce_ts.txt  | 34 ---------
>  .../dts/nxp/imx/imx6sl-tolino-shine2hd.dts    |  6 +-
>  drivers/input/touchscreen/zforce_ts.c         | 36 +++++-----
>  4 files changed, 94 insertions(+), 54 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/input/touchscreen/neonode,zforce.yaml
>  delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/zforce_ts.txt
> 


