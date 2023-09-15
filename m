Return-Path: <devicetree+bounces-651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C053A7A277A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:54:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47672282399
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 19:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3566C1B266;
	Fri, 15 Sep 2023 19:54:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC01F30D01
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 19:54:47 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 336C51BC7;
	Fri, 15 Sep 2023 12:54:46 -0700 (PDT)
Received: from mercury (unknown [185.209.196.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E218B66072AC;
	Fri, 15 Sep 2023 20:54:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694807685;
	bh=KXDEIfF2h/JPA5Xg+mwsO9FHN1x+fFSbZ+mH1Wt3GDU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XngkUsuCOqC8X8AbOfNIwq2iQjS9LbQ8DW1kA1m2B4eFVEUAqiU1lTQ0gF7c6Bh63
	 fqiQDjm0mhthV6dN2vGXbdfDyUly9BxsXsXbiOSg7xQrvnYJCoomaBDOy0jMR6ICyI
	 qLbR97h6tZfrPvIT6dh7OI1zmxP6Dg1rOfJ7lI1ph+HhXlYlUvIaNLYCwo+onMcLed
	 DJbQO265qFIvZ2OVEIb9f1KUnbKV1qn9/UFQ2VxSsd4YOfw+dB92iyT5Rac+F/JSZY
	 MDKBMKKlKhiZO8vI27h0IM3kB2HsrlXi8hF870ZKGRWfgLUed8IsImzON1i0mT21P3
	 hKSWTxdYoIhhw==
Received: by mercury (Postfix, from userid 1000)
	id 58452106044B; Fri, 15 Sep 2023 21:54:42 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nikita Travkin <nikita@trvn.ru>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Rob Herring <robh@kernel.org>
In-Reply-To: <20230915-pm8916-bms-lbc-v3-0-f30881e951a0@trvn.ru>
References: <20230915-pm8916-bms-lbc-v3-0-f30881e951a0@trvn.ru>
Subject: Re: [PATCH v3 0/4] Add pm8916 VM-BMS and LBC
Message-Id: <169480768234.570806.17797021749505145491.b4-ty@collabora.com>
Date: Fri, 15 Sep 2023 21:54:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Fri, 15 Sep 2023 10:01:17 +0500, Nikita Travkin wrote:
> This series adds charger and "fuel-gauge" found in Qualcomm pm8916 PMIC.
> 
> The LBC - Linear Battery Charger is a simple CC/CV charger, that works
> autonomously after the current and voltage limits are set.
> 
> The VM-BMS - Voltage Mode BMS is a simple hardware block that provides
> average voltage on the battery terminals.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: power: supply: Add pm8916 VM-BMS
      commit: 7f590e38317657123fed828d267372a3d6f93260
[2/4] dt-bindings: power: supply: Add pm8916 LBC
      commit: 5cee843d56072135c0d4be4a2d8a20df05155009
[3/4] power: supply: Add pm8916 VM-BMS support
      commit: 098bce1838e0549228c8d426e5de72ec5594b5c4
[4/4] power: supply: Add driver for pm8916 lbc
      commit: f8d7a3d21160a0cab4d15b81231f2a76b0fcee13

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


