Return-Path: <devicetree+bounces-1150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3590E7A5108
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:33:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 482841C209E0
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6215F266A7;
	Mon, 18 Sep 2023 17:33:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E77C23759
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 17:33:04 +0000 (UTC)
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D630FA
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6bdacc5ed66so2606443a34.1
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058382; x=1695663182; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EZNkvnrgYUErV8fZNN98x6gpuYSKrtt1lgRS6aYyhUM=;
        b=KT5CMeiGySwB2yba0cTh4B3PwvADn3alijJ7S8IHhxa3lv58RUvl/Sqo4ivhcbhCSw
         gvdkiTZnJg+NlOluus7ySMWIVR+F6huBklgMKwiEJ5DYNfjSzwftYsWEwcFiPad6hCTp
         LBrZ0DmHIupMFNPqMRFG0KfBXW/0QWYueY9/ft0pSczqx6TJQAgwTsnrireWeMl9l+0w
         kBC1XOmIDWGE0aJx+cev8Iuy9BI83J570s/2DmfmRNCVDIcBxcnO8INXMDhJvQRvpKq0
         bE2jA2CmdUOG6piCg88ejxELmAO4QxiEPVLLP9JWpbkRk1bMDJ/ty4VUDEL3HquKgYSl
         NIDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058382; x=1695663182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZNkvnrgYUErV8fZNN98x6gpuYSKrtt1lgRS6aYyhUM=;
        b=mHXq9rjpDv2QOKKvmsqotfe8YlRs/AjWwodqFeO6CDvlpMQAQbXOrm/bXVQtvn+pvp
         hCzF2Ohpt7lyBUbmjPllxvZO5Ae6sw9rv2WlmXMdXPhn6i8xWGCVUfNXdVMcJ6WjprCh
         UV4Qu5H1VyL2top0SZDvf5VNpaM7cOA3ubHJtqNZp00SYPb+9jmKWW7zJ01CIKWkpUlX
         E9CbS9AP1mapbhmYZk1dtamgAH/dpXEhJw1URW/U9d8rblsH1IYErp3oN7VPrjCt/T77
         GuG6oLrARXeR9FoCj/yQhrMFyYzW6xK411S16xMar2JCKUTrTEcg6oof0u7HpAydkQYv
         t9zA==
X-Gm-Message-State: AOJu0Yx5V5Gj/0ruuTa7OGvMvlTHmh3OcQspsy6bhmdXvb0kP02ITPTO
	9+i/7yXhAdqnVSgg/522miEMDNETB44=
X-Google-Smtp-Source: AGHT+IG31rWsXFqqzyCE9f0hcS/rrnLRjkI9ljM28b5DA3Y1z5cBJrLQnme12QfS2Oo+qUXzI4YDhw==
X-Received: by 2002:a05:6830:1544:b0:6b8:7a07:b312 with SMTP id l4-20020a056830154400b006b87a07b312mr203669otp.10.1695058382617;
        Mon, 18 Sep 2023 10:33:02 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Add Additional Functionality to Indiedroid Nova
Date: Mon, 18 Sep 2023 12:32:52 -0500
Message-Id: <20230918173255.1325-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Update the Indiedroid Nova device tree to benefit from hardware that
has recently been enabled in the mainline kernel. This includes
enabling the PCI Express bus to activate the RTL8111 ethernet
controller, the USB-A 2.0 ports (USB 3.0 still pending), and the ADC
controller with the boot and recovery buttons.

Changes from V1:
 - Correct node names for adc buttons.

Chris Morgan (3):
  arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
  arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
  arm64: dts: rockchip: Add saradc node to Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)

-- 
2.34.1


