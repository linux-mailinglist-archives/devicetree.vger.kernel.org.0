Return-Path: <devicetree+bounces-278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 930697A09FB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 431041C20C99
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B31208A9;
	Thu, 14 Sep 2023 16:00:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45271CF84
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAE8BC433CC;
	Thu, 14 Sep 2023 16:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707231;
	bh=MomOO14fmhQ7KLpx8us+y8UV9w9TPmqAEXBLp6aa/28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iowD5wesMtVuNJ0amqaoqh0QTI+9ABNu8iG6WTaLlr1Y/+ViOWldtYF8sCzmSSGfG
	 5yH27Pcwa2gZtSQguqXNg9TdnP35drT+KkecQQsPe+iJJwW+MBOmZgqGb5w0yewgvD
	 bKKt0HbLRzXgUL2KOxvGUMpOWsJPds/AiJui+EtFjCKpkhZa8XhdLu/LGPb3nqrqYt
	 70TP8EOSIjnLm+xHXq9Yfz3oHF6oBjx5M34/Av7v1m2Qo/uikio80F6cYZ4oPYWDWo
	 1Wd4XuFUWp4eOiVE6fpbwI8hbL3lFI5pP3IQFB1eINlQq4bClkrufAMGLtRftAq4kO
	 LfXBt1CqCNtHw==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] soc: qcom: socinfo: Add SM7150P ID
Date: Thu, 14 Sep 2023 09:04:19 -0700
Message-ID: <169470744871.681825.920484586780940732.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230913181722.13917-1-danila@jiaxyga.com>
References: <20230913181722.13917-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 13 Sep 2023 21:17:20 +0300, Danila Tikhonov wrote:
> This series adds ID for Qualcomm SM7150P SoC.
> 
> The SM7150P does not have Qualcomm IP Accelerator (IPA), unlike the SM7150.
> And also has a different SoC id. SM7150P is used in
> Lenovo Tab P11 Pro (lenovo-j706f) for example.
> 
> Danila Tikhonov (2):
>   dt-bindings: arm: qcom,ids: Add Soc ID for SM7150P
>   soc: qcom: socinfo: Add Soc ID for SM7150P
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: qcom,ids: Add Soc ID for SM7150P
      commit: edc3a1fb626bfb191228fb40a9ddd8806a77eeb9
[2/2] soc: qcom: socinfo: Add Soc ID for SM7150P
      commit: 776b29eb57849bd81ece3e82b1b1b76452dde017

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

