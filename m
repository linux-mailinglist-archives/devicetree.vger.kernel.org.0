Return-Path: <devicetree+bounces-1096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E36E7A4A1C
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:52:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7C291C20D0D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 984D41CF94;
	Mon, 18 Sep 2023 12:52:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1571CABF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:51:59 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF09AA8;
	Mon, 18 Sep 2023 05:51:47 -0700 (PDT)
Received: from mercury (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 315796607090;
	Mon, 18 Sep 2023 13:51:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695041506;
	bh=lp05snp62dGkHv23jHmptoObtM33UpdeDI7QoLPTN5g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=W5FMbdkKAQTwACqLftqkNjgJVdXjY/tm/tXiGaqseI8C4RPQJeY5Np0mldWWtEiKK
	 HYvFnA9MVIndWJCChNhiopljqIZ5TIClUgeOSTw/F451GnkTY4QTNLxRLg0IlLfE+1
	 ge6xkGGJLpdgp6V6C9cA20cKaVKqlMsAYWQ+mlkGaQTIhJZGy5L4EnuHVnZ6QlB6vk
	 budUWJXJbHK5I3g+6qLLrOT9P1iip6kH+0G7nTPobmysx9LjDz0eBLLMEPO7soNE7H
	 isSLKus/LijQP2pcDWzHncvNg9B6phG+GGQJCbijLdfF9SKBgf00H7k4M4JxQPHLNA
	 C7FUBiEgkUZMA==
Received: by mercury (Postfix, from userid 1000)
	id EFE6510604AD; Mon, 18 Sep 2023 14:51:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230917190124.1012316-1-sebastian.reichel@collabora.com>
References: <20230917190124.1012316-1-sebastian.reichel@collabora.com>
Subject: Re: [PATCH] dt-bindings: power: supply: Drop deprecated
 ab8500-battery
Message-Id: <169504150396.1067255.1804972612705856796.b4-ty@collabora.com>
Date: Mon, 18 Sep 2023 14:51:43 +0200
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


On Sun, 17 Sep 2023 21:01:24 +0200, Sebastian Reichel wrote:
> Linus Walleij modified AB8500 to use the generic simple-battery
> and samsung,battery bindings. This is an unused leftover that
> can be removed.
> 
> 

Applied, thanks!

[1/1] dt-bindings: power: supply: Drop deprecated ab8500-battery
      commit: f392f3796bba1a160b8ad706bfe1e1ec3581ad48

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


