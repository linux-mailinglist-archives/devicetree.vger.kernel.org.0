Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE7DCAB93C
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2019 15:29:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728494AbfIFN3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Sep 2019 09:29:35 -0400
Received: from smtp.220.in.ua ([89.184.67.205]:54081 "EHLO smtp.220.in.ua"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728435AbfIFN3f (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Sep 2019 09:29:35 -0400
Received: from oleh-pc.lan (unknown [95.67.115.55])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp.220.in.ua (Postfix) with ESMTPSA id AB81B1A24460;
        Fri,  6 Sep 2019 16:29:32 +0300 (EEST)
From:   Oleh Kravchenko <oleg@kaa.org.ua>
To:     devicetree@vger.kernel.org, linux-leds@vger.kernel.org,
        jacek.anaszewski@gmail.com, pavel@ucw.cz
Subject: 
Date:   Fri,  6 Sep 2019 16:29:15 +0300
Message-Id: <20190906132916.12423-1-oleg@kaa.org.ua>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[PATCH v6 1/2] dt-bindings: Add docs for EL15203000
[PATCH v6 2/2] leds: add LED driver for EL15203000 board

Reworked few minor issues:
- added 'repeat' entity in test documentation
- removed variable i
- few lines of code was moved to make code clear
