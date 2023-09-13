Return-Path: <devicetree+bounces-1-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1677A79F2D0
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 22:27:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E619B20761
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 20:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C231F200CF;
	Wed, 13 Sep 2023 20:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23E71DA42
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 20:27:39 +0000 (UTC)
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43561BC6
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 13:27:38 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-649921ec030so1502296d6.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 13:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694636857; x=1695241657; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i6XY8wIMD7LjGNpegRcCUKrZA0w1gq5GxQRY7mj2AIc=;
        b=Kf95/ErggMuyBb6PKnGChoc2p+mO//zqDb/Tu3cDE3wBOlJlvXZvV/W+byNUmpTz3u
         9yPGBkQTFD7Y+RSzo663T217CcX5OCKlNoYtDBvMw8yOXkWaMaHmJkRUst4vEmGlVsyx
         nFwpcJDsYHTrvLRvqzDrAkcEAAwYDVB0vXghY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694636857; x=1695241657;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i6XY8wIMD7LjGNpegRcCUKrZA0w1gq5GxQRY7mj2AIc=;
        b=BRfNqqkPD2rwNyECi3UY7l3g5QYFB9+P9I7t3lBXdNc/vm4Y9vqW6QMYqdHDoHW8UV
         MuKveHNasllizAbBkefDYkkRH715JieRuEvZbk5jU74smujnZUGIKOLgqOeWzf1czbMt
         o2Tc5SJIzy8PgNMrz191ly+oF5tG6Nj41tfT0aPM1g1GihEOM5UF25A0eKlNHhC8qeBH
         m5vukkQwMNwqtlfS1hPXoO5QZIgz58fgosdwAiOfHX66NfMRczT5VpFivoDfmkJ7T+Nq
         ygmwDbakMIihfD6gDnOWO4cG77wsgcB+kAyO1/vuCdlK9d6biP5Njm+Tco81fW3YJPvZ
         OLkQ==
X-Gm-Message-State: AOJu0YzQwYwPu4PR7r6uEMuqdBEae+bazxAUKyYFDqyvADgD41EGUBpi
	z5zTo/sgSoMFz03zXvu5cPlo1zfm1GDJqLcIyos=
X-Google-Smtp-Source: AGHT+IFYwIjvLRc6LEKtGx3sE0GWOyPWpFynwq6ZKErB4jK96dys9p+M4WchlhM+4w7p+CqP8dinpQ==
X-Received: by 2002:a0c:b24e:0:b0:651:68f4:92e9 with SMTP id k14-20020a0cb24e000000b0065168f492e9mr3603069qve.11.1694636857752;
        Wed, 13 Sep 2023 13:27:37 -0700 (PDT)
Received: from meerkat.local ([209.226.106.110])
        by smtp.gmail.com with ESMTPSA id c23-20020a0ca9d7000000b0064a5de64668sm2277qvb.141.2023.09.13.13.27.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 13:27:37 -0700 (PDT)
Date: Wed, 13 Sep 2023 16:27:28 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: devicetree@vger.kernel.org
Subject: This list is being migrated to the new infrastructure
Message-ID: <20230913-equal-matrimony-810078@meerkat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello, all:

This list is being migrated to the new vger infrastructure. This should be a
fully transparent process and you don't need to change anything about how you
participate with the list or how you receive mail.

There will be a brief 20-minute delay with archives on lore.kernel.org. I will
follow up once the archive migration has been completed.

Best regards,
Konstantin

