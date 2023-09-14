Return-Path: <devicetree+bounces-143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D13779FDF1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:11:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B802B1F224F3
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1344ECA6F;
	Thu, 14 Sep 2023 08:10:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079182915
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:10:40 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A904CD8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:10:39 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-401b5516104so6714025e9.2
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694679037; x=1695283837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMQkGRZuOWX33tb/PbqZ09rPOB4FDk/5Zw4MRHH7S/U=;
        b=Y5XKTJ3awKNyiRBpjxXyfGWJqTzZ4r4RJVwHOwuINvVdMlEPYidfzaihFYi37Hsp20
         PXMYAVaqTsWJIAYKGtKtTAM68RAex7iGZ5SwdGx85PNUlAua/AKTbpuYZpFAgTagLpz/
         ERzlgmD9RNu0dHsfmw27K7LhM90M1IdjiFE6ahg2drjLy6knMYQZAsZtRvVkZpCqMtjJ
         0VfL01/78lGEMerF5rQ3C6pJ+EsYdXUPSczHXOs2UTcJF2Tfk7qBDa4Qle4Hw/xjXctX
         ish8wQJdkdURkrL8QNbB2KS0tTLJ0boa3HAIrn6ogE9x6EF74onpT+Y43MRPFaSc3HHf
         PPFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694679037; x=1695283837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMQkGRZuOWX33tb/PbqZ09rPOB4FDk/5Zw4MRHH7S/U=;
        b=I2AttA0xbaJv1vdvNdelOXoLVj0s4RdTgL9H2y1c15bdNN/dumYPquHgA8E24UW6yJ
         qwze/uvW3abi7c82V2dNp8UDqX1wPrkQlr9UiIXzO1PPFzuRy6FFU0Qd2ezAFxidZL1J
         wAHiUnywf8yT3YUEPP2+85idBgwG3WevO2Yc0C1ZdXlcy+oJCLTY2j7u6RyaSCctgHCV
         l/g0TrVE4flQIH52Zu5Z6G0prs8g3graS4ce8FTNS1kDZySNPir0HOHGOwO9qC8IvAXh
         56G05nod3Bgphr+/HbzdOr10xMMdpLTtqH5Xt2IxIeM6oVvn7R60MSWmPsBI4xvJ+fTm
         Hy8g==
X-Gm-Message-State: AOJu0Yx5INA6egeQc1suHC3G8D/etoY4HJ8c7Qx/eV694QIrObuZ5FY5
	M+3bqNWnDS9nTC1BJiTedIr/yw0awatiHwZwB+g=
X-Google-Smtp-Source: AGHT+IFxqQhwwTKH7xN4uv6LGeh2UbDCXDARXiHHlwBMWje0PJgx+4KKpeNEfWz3z+zCwLa6ijabNw==
X-Received: by 2002:a7b:cd1a:0:b0:3fd:1daf:abd8 with SMTP id f26-20020a7bcd1a000000b003fd1dafabd8mr4084494wmj.40.1694679037547;
        Thu, 14 Sep 2023 01:10:37 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0ac400b004030c778396sm4152155wmr.4.2023.09.14.01.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 01:10:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Mateusz Majewski <m.majewski2@samsung.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] arm64: dts: exynos: remove unused TMU alias
Date: Thu, 14 Sep 2023 10:10:30 +0200
Message-Id: <169467902474.16247.5261231734946349576.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230911133342.14028-1-m.majewski2@samsung.com>
References: <CGME20230911133414eucas1p116d395f8219ea34c284aa21d46033fa6@eucas1p1.samsung.com> <20230911133342.14028-1-m.majewski2@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Sep 2023 15:33:39 +0200, Mateusz Majewski wrote:
> The ID of this alias is checked by the exynos-tmu driver, but isn't used
> anywhere and omitting it does not cause an error. Indeed, this is the
> only Exynos device that defines this alias.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: remove unused TMU alias
      https://git.kernel.org/krzk/linux/c/f28dde395937e000585ac87c0d1c18885661161d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

