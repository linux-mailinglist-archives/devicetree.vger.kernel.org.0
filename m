Return-Path: <devicetree+bounces-279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF43B7A0A0A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:00:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3D921C20C74
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069FE210FD;
	Thu, 14 Sep 2023 16:00:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CB928E2F
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64221C433C7;
	Thu, 14 Sep 2023 16:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707230;
	bh=OYN5GeHDGg/fi2AaPThTCk4AuKi5RjqpvJ0Y1SDgX/w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Fcy6Q1bfxYDY/IOa3YKiQaKZRUXtIgxcdDtZZUjHZw/Djm1cjCKi4u+av9XChdltj
	 pfPAZrMEfjJjxoWshrmdUzUHYIUfA4JbyUZQG7UvjLryoJpKgnOmFInRQukxnBEwj/
	 SxC2GVT415zPjU5UUJJZxheXhyK9DfD9usF1uhaqfBc1DhTd6RDsAYqTUDfy8UMH/l
	 cngmJVmD1VsRP1QBS/JGUvA/q/tPMcQmieszLQMep0tGIcNNIntPTn7d+Tcj7GQORC
	 DHYR5sH2LRqGjswvwj0lyE51TapExlIMZdIXT9rzvUQEoHjE9DdgYdFyIHb8B01aeg
	 pynNGXH7QZ9lg==
From: Bjorn Andersson <andersson@kernel.org>
To: Adam Skladowski <a39.skl@gmail.com>
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	AngeloGioacchino Del Regno <kholk11@gmail.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/7] MSM8976 PLL,RPMPD and DTS changes
Date: Thu, 14 Sep 2023 09:04:18 -0700
Message-ID: <169470744874.681825.2938456613731544807.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230812112534.8610-1-a39.skl@gmail.com>
References: <20230812112534.8610-1-a39.skl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 12 Aug 2023 13:24:43 +0200, Adam Skladowski wrote:
> This patch series fixes introduce support for msm8976 pll,
> also brings some adjustments and fixes domains setup and few dts nitpicks.
> 
> Changes since v1
> ================
> 1. Fixed few styling issues
> 2. Changed compatibles for plls
> 3. Added fixes: tag to first patch
> 
> [...]

Applied, thanks!

[2/7] clk: qcom: clk-hfpll: Configure l_val in init when required
      commit: 500a4609eef46d49a260173b66cabb20bd5159ad
[3/7] clk: qcom: hfpll: Allow matching pdata
      commit: 34e000c0963e55f24be2254fa645f8dd8257a9e0
[4/7] dt-bindings: clock: qcom,hfpll: Document MSM8976 compatibles
      commit: de37ca2dc98607e74522d8f243aa7feac74577c5
[5/7] clk: qcom: hfpll: Add MSM8976 PLL data
      commit: 1fa2d1a887c763246662a88e203d69b36052770c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

