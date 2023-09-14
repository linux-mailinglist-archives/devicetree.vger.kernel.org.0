Return-Path: <devicetree+bounces-142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 601F479FDEA
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A685281511
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10F8CA69;
	Thu, 14 Sep 2023 08:10:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25EA2915
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:10:37 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D3CCD8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:10:36 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-401c90ed2ecso7408115e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694679035; x=1695283835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hin5IormyU5dD/AsuAUUHoFBHLo1oonPXuLbsZDcZfM=;
        b=qc6tGIzJnXHJrkKuKH3zQCkBaNa+nHl0dY76oNkioDPkTilWsKWPTaH+FBcK0w4a2n
         w19xC4X9l1nKOJX241+zH6AvEaJZZqqGl6wQpvMkPRS1LHyNFtNwF1pmY9HOU5H5SfHf
         ApxExjKerMMFhDLoGCMgC4c10BVDXfJImxYIRlxgMNrLEq+rKR7u05pDe6RpFDTE6Ekn
         1npNGmMjRBY151t5W/Kvrd6c9wTpwS4ghOsmjMyrjRHDoQE4kYJWuSNESW7zjIqc7zYS
         tdUr0H4NPZBpiiNAyUiOjoxn4rNUsMSpJA/yD4At3JhUtRgZpUV+V4N2iGiimQ+SbRNM
         9dfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694679035; x=1695283835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hin5IormyU5dD/AsuAUUHoFBHLo1oonPXuLbsZDcZfM=;
        b=niBLO/JIbf6Nr/zSfsnDYscci5pbX0y0iPrBfWGJ9N3qas7wr2mU6/in5A4uhrWGF+
         pXCfgni5Ng2m+kJKbvvRNVJOQf7v6xrDG7XKGzaeMNcIJp/nNvu7SHGLA+LsSg3XuypC
         7RuEGCZxG5Cmv7KQ+KAuIQ7TnP64Nj+e8l9pbZ048EXSbYnGJCRbPrU2aafaLFTW3OWf
         0JuLozj7wT3AGtSNmwX7J0cM6I3ODoFyuB2fnGoHb9rOJlHjjjrqsk59NzZRp/wmiY3o
         mQhkXlYyXKmNFFqv0MNj30DpmiO9PmXf6tX660eTUMge7xyN3Ndm+W+Yv2Hr/fQK7Jks
         TyrA==
X-Gm-Message-State: AOJu0YxGaVIyr2ItFbJ9j0WPiPvQsgS2LYGs6/ffhCkGCm6l+jdnUogY
	sQT4bNNQrt+sXFlHfgani74tEw==
X-Google-Smtp-Source: AGHT+IE4V2wgERUskaxyDybA22SPbjKwWDreD4TUrJWgmpWBN9TSuDjDhVZXOc5XcG6yR7iBkfIb2w==
X-Received: by 2002:a7b:cbd7:0:b0:3fb:a506:5656 with SMTP id n23-20020a7bcbd7000000b003fba5065656mr3969326wmi.32.1694679035279;
        Thu, 14 Sep 2023 01:10:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0ac400b004030c778396sm4152155wmr.4.2023.09.14.01.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 01:10:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Jaewon Kim <jaewon02.kim@samsung.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: exynos: Use pinctrl macros for exynos5433-tm2
Date: Thu, 14 Sep 2023 10:10:29 +0200
Message-Id: <169467902473.16247.3464125892860371063.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230912055635.49092-1-jaewon02.kim@samsung.com>
References: <CGME20230912060640epcas2p43a9e6e11906d03641e76fb3df97462b8@epcas2p4.samsung.com> <20230912055635.49092-1-jaewon02.kim@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 12 Sep 2023 14:56:35 +0900, Jaewon Kim wrote:
> Use pinctrl macro instead of hard-coded number.
> This makes the code more readable.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: Use pinctrl macros for exynos5433-tm2
      https://git.kernel.org/krzk/linux/c/d8c326bd5aa5d6aac0c4826dfeadcb02dc77ab88

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

