Return-Path: <devicetree+bounces-281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C377A0A18
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:01:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE8052823B0
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6206421112;
	Thu, 14 Sep 2023 16:00:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EBA210F7
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0F7CC433C9;
	Thu, 14 Sep 2023 16:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707233;
	bh=Pq+JZ7AOCNCHzsxRrec+4ynNFyDZYmXwiQzuhBHdAfM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MoeSqVf+7wLEvBQV4am2XJiWhxokbKUEsGzb0wdVF5bcBRp3qeZ3M1hJp0CgSfwWb
	 VrnuPRv7CQ6o7ixw3M22UOFVgddQt3c9U3W56hmHdWdhU7yLeZ0GD0EVhSWCJ/BZRG
	 gra3WVTi3+MGtEkXalHQ8+cFJZNgmq5E6gJXKvHlZyNOI8MEPsf6zce3G6XD3+bSeZ
	 3Urr1QZPJtj2tToOICPflJnhi7dWThZCAUbyKHjCl8tS41PJkUSj6yRow+OdD4/tgP
	 Sc/rsIz3LbRreU4yTJHjm+519mBWesiagPz5/Hhun7Y6X+G3nJtlI9JcUgsr7Bd8RH
	 Sf5NOCNx+O4LQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/10] phy: qcom-qmp-combo: convert to newer style of bindings
Date: Thu, 14 Sep 2023 09:04:21 -0700
Message-ID: <169470744892.681825.5621004293047784598.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 11 Jul 2023 15:09:06 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made me understand that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[05/10] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of bindings
        commit: ebb840b00b7f9fc15153b37a7d9ec5b47a5308c1
[06/10] arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
        commit: 70c4a1ca13b333b00e01266d299605fa1041b0d5
[07/10] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of bindings
        commit: 36888ed83f998c3335272f9e353eaf6d109e2429
[08/10] arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of bindings
        commit: a9ecdec45a3a59057a68cf61ba4569d34caea5fc
[09/10] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of bindings
        commit: 0459c56e538bd4d8ed7f128d7a50a8990cbcb7b8
[10/10] arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of bindings
        commit: 1a47520b314a0f201fcec8c741ae60608380e78c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

