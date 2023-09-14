Return-Path: <devicetree+bounces-282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7516A7A0A1B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41B5F1C20CB6
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFEA92134F;
	Thu, 14 Sep 2023 16:00:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F202111A
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01ADDC433C7;
	Thu, 14 Sep 2023 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707235;
	bh=LcuB9zR375+7iGkeQHoDASa4rDIgGV48HpSpQaqIAaA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K9Y16kT3WenNTuzTz3vmI65HUvSDGe+Vkm8urSaY4/qyFmeYD669MYzV+vKImSjF8
	 j2WwrX9EEp5AwhKHrwGwdx5q9lEQrDGyR+LuooGHJM31W8lVaL5syA1rf87HxWhfca
	 x8fKBjglBjf941YxJ4NT/i+d9ep2EyNDKosn+6baQmgITl6dZ/pivmItsi+MLgpVjB
	 05TV7OJpLsEjsAu+BUPd/qI0xJeuAtMasiPs/Mzk0yG0M8jGtXNHAoBbV15u3So8l7
	 tuZJscn5jDhG3e9SGFbOhLLhEs2WAaeAg8pMu+xQCK3UKZUIJwtJTIHhM47wCHGbh+
	 JCxbuH5eStBww==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org
Subject: Re: (subset) [PATCH 0/7] 8550 dma coherent and more
Date: Thu, 14 Sep 2023 09:04:22 -0700
Message-ID: <169470744881.681825.862550509087910761.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
References: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 30 Aug 2023 14:48:39 +0200, Konrad Dybcio wrote:
> Qualcomm made some under-the-hood changes and made more peripherals
> capable of coherent transfers with SM8550.
> 
> This series marks them as such and brings fixups to usb and psci-cpuidle.
> 
> 

Applied, thanks!

[2/7] dt-bindings: qcom: geni-se: Allow dma-coherent
      commit: 274707b773378f4ce8ba214002b3d67a4d0785ae

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

