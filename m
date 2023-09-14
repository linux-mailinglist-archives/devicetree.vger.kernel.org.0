Return-Path: <devicetree+bounces-284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 088DB7A0A1F
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:01:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F33751C20C46
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4581E2134E;
	Thu, 14 Sep 2023 16:00:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6DF210F7
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2B93C433CC;
	Thu, 14 Sep 2023 16:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707237;
	bh=0dXDToWchwa5Fi/vBSRm1OFETDOVXG95OjcF/59qP30=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=moovSjx08Y7pKhz4XmLz2HheNOGl6IkD3m3nE3ZaczG7G1GLPMKFYor9bs7Uu55uu
	 bF0H9FhrDdNytckqd8pujQx9kj6AHnr6F+DKW2IWe5A3R5K9vS0hDGJ0CKxYYeHZ74
	 Q+FrPZgQzz7+i7noyBtHAt+ZLqydV+ibBQ+d898O6HiSvUjICwTIOTzqs5Nx+7Hzu4
	 u28WsYrJ43J1vHsmTDYo/iBkpITsZ8vlGLTABR3No1BFqFRBOvknXUNzYRJFg9noT1
	 1fitveKOJxvON1ghmum2w+XRsf2uZdoB/qFAL3pnG+O3LtgvOXaHSADJwIY76K5qsy
	 /0AJzJx1bC+mQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/6] arm64: dts: qcom: sm8550-mtp: use correct UFS supply
Date: Thu, 14 Sep 2023 09:04:25 -0700
Message-ID: <169470744885.681825.1825941724380590278.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230906104744.163479-1-krzysztof.kozlowski@linaro.org>
References: <20230906104744.163479-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 06 Sep 2023 12:47:39 +0200, Krzysztof Kozlowski wrote:
> According to schematics the VCCQ2 supply is not connected and the L3G
> regulator instead powers up the controller pads (VDD_PX10).  Use correct
> supply vdd-hba and drop unsupported current limit for the vdd-hba.
> 
> 

Applied, thanks!

[1/6] arm64: dts: qcom: sm8550-mtp: use correct UFS supply
      commit: 5c72cb3a9a96a5103cba49a1c8f2a2c71b158ab6
[2/6] arm64: dts: qcom: sm8550-qrd: use correct UFS supply
      commit: e485c6e19ae888761d9fc65353722afa0235bbb4
[3/6] arm64: dts: qcom: sm8450-hdk: add UFS host controller supply
      commit: f5688b4914fa5c5b9a0fca1692b82d25ae6cee33
[4/6] arm64: dts: qcom: sm8450-qrd: add UFS host controller supply
      commit: ebad126daf0c70a054b358e276cef453b2fcdc7f
[5/6] arm64: dts: qcom: sm8350-hdk: add UFS host controller supply
      commit: 2c20c75d850574c727e07e615ed55e3d5c2b42db
[6/6] arm64: dts: qcom: sm8350-mtp: add UFS host controller supply
      commit: 201cd8541673f9b553508c2f11dadfab7874addd

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

