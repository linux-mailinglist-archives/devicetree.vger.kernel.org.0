Return-Path: <devicetree+bounces-305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAFA7A0E62
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:32:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BA1D1C20CB2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 19:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8965266B7;
	Thu, 14 Sep 2023 19:32:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEDF21116
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:32:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D6B7C433C9;
	Thu, 14 Sep 2023 19:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694719960;
	bh=Zj/zEGz3WbI5U0fBXmG0sEklTCa6mHF3Wpg6Q0q2m0k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UoK9BrWWUZMBR58x0HXOK5bx+LE1KbQ0mtw4oS96D60qs8/O8nAxnQyJ6wKHOOvvs
	 guW2uVdOjnrX+wY2gwT9X3+jEmPOspSsZjZ/QlzEDq2fQk8iIIG8FoMYNpWkIAW31l
	 BXy1CvLsf1EZkG9TDO4LVoBdcfKWdIv6RjQDGvUntBsU8w5nJtEg1EkZLflpHI6JJM
	 4JlJBiwviStKmAD5DOUkBbEdkekbJqw6bPEKdYQjkNi9UtjpzpYM/o2DDIHd7ur2ls
	 TON6ynk6yzhhX7vhV8rnqG1Wm3YftbBBS8UDA8nRlgHaln7zEAy/b9anyuQSgnwSe7
	 Pb6jiS6RiIFzQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: correct PMIC GPIO label in gpio-ranges
Date: Thu, 14 Sep 2023 12:36:41 -0700
Message-ID: <169472019837.1902897.16813387384652908882.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230818135538.47481-1-krzysztof.kozlowski@linaro.org>
References: <20230818135538.47481-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 18 Aug 2023 15:55:38 +0200, Krzysztof Kozlowski wrote:
> There are several PMICs with GPIO nodes and one of the nodes referenced
> other's in gpio-ranges which could result in deferred-probes like:
> 
>   qcom-spmi-gpio c440000.spmi:pmic@2:gpio@8800: can't add gpio chip
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sa8775p: correct PMIC GPIO label in gpio-ranges
      commit: f822899c28572a854f2c746da5ed707d752458ab

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

