Return-Path: <devicetree+bounces-144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A40479FDF2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11E031C20AD7
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33617CA75;
	Thu, 14 Sep 2023 08:10:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266482915
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:10:42 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8527C19C
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:10:41 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-404314388ceso4509585e9.2
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694679039; x=1695283839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jjz+NUe5hgs2hIHHXxH6w/00yPGwJQXYEzuFex6noc0=;
        b=b14A8v2tIkMxCndyUJTBBgwmgZz+bAcWL6peuOZvQjrdSAI8VYWfJsnUYV0bd/+mBd
         qS8CpmHcmkzSSUO/MuUM2ewfn5EZwS0gVxhPvbuZMOKmvuJRCDVl5rUT4xNCI31tlpnI
         6t8aYxOvjejoC11GOniEiLBLQeND53GUAaXJEBpwsJE//rwDlqwZgsXHZ7+Gg6jUdJ+r
         utacaLfh+1upIAyG3SF1++zrs3f9dFaqeVHw/pRnBjYwNDjVI3PwPBDDCmHS/5u4obL6
         +hAeS7aoV70UEbRQlqG40Jl3TTifsLp7A2+Fb7F7zPAFEm4VKO1tDbkd7wPj9B14IGSD
         npjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694679039; x=1695283839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jjz+NUe5hgs2hIHHXxH6w/00yPGwJQXYEzuFex6noc0=;
        b=u8u1jlXFivC8cjnNwsfrST8tnOP8G3f2CApn6sNm9x5dFxKpsIQ9KjQ9OZzjW8z43M
         tXUCxlLwDMJPaNPrt+Wt5znIVIcZpU23O2DmqICKJWyEoCccmInBeWeYiy5qA94XibbS
         f5WMSkdMwem1zDIwRUwZzZz9eBvn4rilBJayfaaC4SnNqWsSAkDNKdv/kZ/c2wpE+Kfp
         etrjlBZdV9N4pJevNCwia5hBOuHvQNvnKmGvz/mkI2Fzr5jBIm1wIBGyzuxXGledv27u
         FGMmn0FGtVw2o/BZEIq1i8vM5YHELXn2TeLkNZPlA+JtKHh9kWgKCTbc2U8sfKOqLkEY
         93hg==
X-Gm-Message-State: AOJu0YxaYJDleZuGKU+ZsFQszwBSn2fbc8hHwJXHoNNAJ8AtDcEbw3W7
	dxL6JyNGIedkxf93I5wzE1Ezh1xmqVC+3XTeyOU=
X-Google-Smtp-Source: AGHT+IE2bWZZmlPTiRjEI+ekUEDONcxec7lp5Jn5BWw+Jld3Ytewru9YGgQRWN15rYA/XM5ICyPfhg==
X-Received: by 2002:a1c:f717:0:b0:401:bf87:989c with SMTP id v23-20020a1cf717000000b00401bf87989cmr3984627wmh.34.1694679039623;
        Thu, 14 Sep 2023 01:10:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0ac400b004030c778396sm4152155wmr.4.2023.09.14.01.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 01:10:38 -0700 (PDT)
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
Subject: Re: [PATCH v2] ARM: dts: exynos: enable polling in Exynos 4210
Date: Thu, 14 Sep 2023 10:10:31 +0200
Message-Id: <169467902473.16247.10096195941299515281.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230911133417.14042-1-m.majewski2@samsung.com>
References: <CGME20230911133431eucas1p2631e7060cecb0914933ed45b837cf8eb@eucas1p2.samsung.com> <20230911133417.14042-1-m.majewski2@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Sep 2023 15:34:14 +0200, Mateusz Majewski wrote:
> It seems that thermal in Exynos 4210 is broken without this, as it will
> never decrease cooling after increasing it.
> 
> 

Applied, thanks!

[1/1] ARM: dts: exynos: enable polling in Exynos 4210
      https://git.kernel.org/krzk/linux/c/ef399736c3ba77fb82d778b1b7285baa65a7e079

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

