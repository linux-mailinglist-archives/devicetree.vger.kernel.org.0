Return-Path: <devicetree+bounces-283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 097607A0A1E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3136B20B2E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0F021355;
	Thu, 14 Sep 2023 16:00:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD70210F7
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43D58C433CA;
	Thu, 14 Sep 2023 16:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707236;
	bh=s03MGFQBL0QBju8gHOwhnm7b8DWId+2tVRQJS/iUXnY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dPVVmqmCN63HSGnyuDOfrzvWPDWOmAbfgciw8Mbgts0IWth0iLMsA/LK+EOvdVTh3
	 U3bj/kj+TCLLORubXKvPytR1Bc5gatZsfrazZmQLbz4xWoxSl8VbQA+OjkxvZ36ktx
	 zlxRmhGMCVB/0uWT4zDloBt8WsEIxe9LzwCWbip6r7BUt6hmseae0MahFArOjTtqok
	 ZLDpQBOBn36d2B8tD0PUd4TaORvVv/nUkJB2XYPNXPjjbZNVijU9vdrDgXMDsy1EW/
	 JySavq2mz7SqYO9+xDp0kkq4o5GSN9Eb+HlzTqTW2hIEGAIEVJE9k5W89XuQZ594Qt
	 t+d9+699DT38Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250-edo: Set UART alias and stdout-path
Date: Thu, 14 Sep 2023 09:04:23 -0700
Message-ID: <169470744883.681825.16969162035585041637.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230912-topic-edoconsole-v1-1-b392ea67e539@linaro.org>
References: <20230912-topic-edoconsole-v1-1-b392ea67e539@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 12 Sep 2023 15:48:31 +0200, Konrad Dybcio wrote:
> The GENI UART driver requires one specifies a numeric alias. Do so and
> set the stdout-path to route the console to the debug uart in the microSD
> slot by default.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm8250-edo: Set UART alias and stdout-path
      commit: 2e754956848889d5b04d8023753fa28de679373d

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

