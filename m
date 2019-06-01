Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36BDF319F9
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 09:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726013AbfFAHH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jun 2019 03:07:29 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34231 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725928AbfFAHH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jun 2019 03:07:28 -0400
Received: by mail-wr1-f68.google.com with SMTP id f8so7889565wrt.1
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2019 00:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=71VNyN4Ro2czwJ5KFVnEX3HLCh70R/RKyfgoDtrVXOA=;
        b=BlNzkwkFJRUzE/oQj3uKii45pcdM2Y397RITq392c+sOVkV1Rq9dfrlfmXRz2av0oj
         Fj4WKKsra0JjdSMBBVvktZ5dDKbayLd67d//U9qgk7R4DUlrqWgrBNXaHhISbkxgGQAG
         68/e1sufkwFiTyyVGujDzP/G3/TTTrPOOfq+IfhuJHcpl9yejG9OgFOpoOYUycNqab+K
         KZY0zwhEvb7PQFRM9cpOsYM3AERqpAVEDsrZvaL3033kTc0QfmuPYrHzAiLJQDEN9p42
         LxthztYbqidR7qu1hKewVgxu1MHt1psO1Oi5r8LL7yIXqu5wOxRgGxRSDqnE8bBg4wX6
         8HXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=71VNyN4Ro2czwJ5KFVnEX3HLCh70R/RKyfgoDtrVXOA=;
        b=pNT79YFvq1o64tCmWNhHDR/JXvg2bSuYAOcJdQdT30yvdMdSiaYqkh/3x5FrGjbeoD
         vPVKuxs+nesbzLZ/oo1lZ+YxaoFnQsKZF5mxaM5bk1L6MT5T2J0Cp13MwozjavWRYghR
         a2YFPUVnmnwsoMvXW96MvS43AxFBH4a1doNtdi4Xbavt0ShUAWXKfUR2yhpFqP+uJszx
         TTYdIw3nxCjrBRNBlMBY1YOrIqjbwnQvfsmEbQ81EbstUX5phfC4V/CwKVtdPy04CFbd
         lOdmj7MrqnSgXAe2MhyEkP2qbkmpaWQEuKP97GsbnoHJi5YRxdvmDcKU5n6JZwLxQPbZ
         Ftkw==
X-Gm-Message-State: APjAAAV4tzicqMAtJp4EquaZaftyilF24qoQhEMa0xAC/cQYQ6LsnmRf
        i+DCd0pcTN+fL+cnvfWrndc=
X-Google-Smtp-Source: APXvYqySCrlRzCFEF6/6Dxo+v8AfYqfnaUyGqhpOsIqLUJDk0UHzcQhk9iTNzszTHPxZEmixS+s2+A==
X-Received: by 2002:adf:e344:: with SMTP id n4mr9091822wrj.192.1559372847280;
        Sat, 01 Jun 2019 00:07:27 -0700 (PDT)
Received: from morpheus.roving-it.com.com (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
        by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 01 Jun 2019 00:07:26 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: Updates for UDOO Neo
Date:   Sat,  1 Jun 2019 08:07:15 +0100
Message-Id: <20190601070718.26971-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A small improvements series to update licenece to SPDX License Identifier,
enable two of the i2c interfaces that contain either on-board sensors or
a connector for "bricks" of sensors, and finally enable bluetooth using
the serdev driver for the TI module.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>


