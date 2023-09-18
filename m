Return-Path: <devicetree+bounces-1210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3847A552C
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:41:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8ED0281FC9
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D69CC28E00;
	Mon, 18 Sep 2023 21:41:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C5C450EF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:41:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97C7DC433C9;
	Mon, 18 Sep 2023 21:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695073300;
	bh=V73nY87sAUP0s1VV3p5Xs8gRGMRBWjjwisJY9Axkhtg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T+V2W2V2R7xh2q8vD7s/3b9X+EeWgzacET/c0gn2eDnB9H9VwmZUW/9oR6dKBo3fX
	 qRXTs8+Q9yyRp6v31I4A978mX50y7kfd6rPqB6krd7XGZtFgmS6ccOdmotPQP9CGdN
	 +VpvRxMEGNgqf1i8V760VaLT/N3IC4Fahog9IjdaXKvNnekUgR2nP51z91ADzBiSFH
	 n+0VARy7IR7da8XAMNNTazbGztC//eCUOHRaX+Ut7BRw9QmGEBmh8SJqrIBwI01Gv6
	 V65i+Yiek7G07x4GJ0qCid11ybVvLZc4BPhoU3wiJbxIUfhWHeXSucQyOUL/sYNPTB
	 QC1r+aujqRblA==
Date: Mon, 18 Sep 2023 17:41:38 -0400
From: Sasha Levin <sashal@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>, agross@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 6.5 30/36] arm64: dts: qcom: sc8280xp-x13s: Add
 camera activity LED
Message-ID: <ZQjEEt7sB2M5EO53@sashalap>
References: <20230908192848.3462476-1-sashal@kernel.org>
 <20230908192848.3462476-30-sashal@kernel.org>
 <ZP60ngCV3hhNZiX5@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <ZP60ngCV3hhNZiX5@hovoldconsulting.com>

On Mon, Sep 11, 2023 at 08:33:02AM +0200, Johan Hovold wrote:
>On Fri, Sep 08, 2023 at 03:28:41PM -0400, Sasha Levin wrote:
>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> [ Upstream commit 1c63dd1c5fdafa8854526d7d60d2b741c813678d ]
>>
>> Disappointigly, the camera activity LED is implemented in software.
>> Hook it up as a gpio-led and (until we have camera *and* a "camera on"
>> LED trigger) configure it as a panic indicator.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> Link: https://lore.kernel.org/r/20230805-topic-x13s_cam_led-v1-1-443d752158c4@linaro.org
>> Signed-off-by: Bjorn Andersson <andersson@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>This is a new feature if anything, not a fix. Please drop from all
>autosel queues.

Not a feature, but hardware enablement.

-- 
Thanks,
Sasha

