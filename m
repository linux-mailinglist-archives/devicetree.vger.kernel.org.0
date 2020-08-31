Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E86722574DD
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 09:59:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728103AbgHaH7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 03:59:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728083AbgHaH7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 03:59:19 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2390C061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 00:59:19 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id v16so2661506plo.1
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 00:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=na3UFuH7TTytOpXQ3KYx1BVxrcrylb7OmSszfxLppmk=;
        b=t8PGo9hDLaJoYegclWO2n2rMjgUM5GUoZKYLyQD7FcWmo+NsSr9n5Aa3LQo6vkUfSs
         RcCJGsbxL9HxesbeTlo5T2kjlsaG6PWJ/EL8omqBdtsj2c5x/zRhEZXpouySfY8wG2/T
         Fx7I68lAuS2oHTsY7triY+y2RJ/JUQ9xzosFS/hyhF5o5AVllsVQc/fj3y3G6Wmoh2Q8
         FFFDQmiPTFXiU46NPM4DUHL4ebtCWVOokxzYRPd6PR5i53htQPzHdzsB52oWficuew6y
         BqZlW0NIdRKqiYWCkHGA/x06DNXv5Ypmzg20YMra7XOv/6t3Zu+B1BZZaIh/U1qKUozb
         iOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=na3UFuH7TTytOpXQ3KYx1BVxrcrylb7OmSszfxLppmk=;
        b=IonuZZ+dr4Hj5adg0DtjR2ivINXVot5KgK4vmcfgjlw/HYLgU+RQe19RAwGaXGirPZ
         j0uhXyiFsOfB+0Ovd73CmFVAwmC3sM7pb9z8xVqexUYA8STZG+0tFrdo2cTmao752VJU
         LvsPOK7gVU713cHamFWBH1KczW3z7QmO0QwPtXpjfb0vlrmIGcYjHETHtZ9r/oQb84ef
         xgjxuRC2Ynd89SFDtJeaJR2PLv8S9c3Ojah3qLyLQKyCh0dk0/uUxjK8wXVZ71kSNGgg
         FfLT0+GYKlafVMmTBplazwuupRpJipWZoW9bTqC70MP5/Mej+ojKjAyaCl3u3uY11u1P
         KVPw==
X-Gm-Message-State: AOAM532H2eWN6XAG229UPTSq0+Qjd+KAkq+1vIX1bsuzyy6zM9/yaZu7
        ilLgY2hHNANV+NIGQDr1wv1QQT1mj3g6vA==
X-Google-Smtp-Source: ABdhPJwNYxmGFxgMG+gf5dxSY8LKelnOhQ8jERNzKhgwOYBXzYkPcX6cXh0FkRZYPxqpBZQpiW7xMg==
X-Received: by 2002:a17:902:8344:: with SMTP id z4mr214910pln.15.1598860759050;
        Mon, 31 Aug 2020 00:59:19 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.190])
        by smtp.gmail.com with ESMTPSA id g19sm6424057pgj.86.2020.08.31.00.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 00:59:18 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v4 0/2] Enable RTC on Odroid N2
Date:   Mon, 31 Aug 2020 13:29:09 +0530
Message-Id: <20200831075911.434-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Inorder for test suspend/resume feature on Odroid N2
we need to enable RTC module on this device.

Changes v4
-Add gpio interrupt for GPIOAO.BIT7 as suggested by Neil. 
Changes v3
-Drop the patch disable on VRTC driver.
-Drop the INT pinctrl for RTC - not required for I2C.
-Add the alias for RTC nodes.
Changes v2
-Fix the missing INT pinctrl for RTC.

Tested on mainline u-boot and odroid u-boot

Note: Now the rtcwake feature works occordingly,
But after resume I have observed a Kernel Opps
Hope some body able to repoduce this.

-Anand Moon

Anand Moon (2):
  arm64: dts: meson-g12b-odroid-n2: Enable RTC controller node
  arm64: defconfig: Enable RTC devices for Amlogic boards

 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts   | 17 +++++++++++++++++
 arch/arm64/configs/defconfig                    |  1 +
 2 files changed, 18 insertions(+)

-- 
2.28.0

