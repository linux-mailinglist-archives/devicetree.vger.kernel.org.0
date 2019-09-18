Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A492B61DC
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 12:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727263AbfIRKw6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 06:52:58 -0400
Received: from smtp.220.in.ua ([89.184.67.205]:50801 "EHLO smtp.220.in.ua"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727254AbfIRKw5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Sep 2019 06:52:57 -0400
Received: from oleh-pc.lan (unknown [95.67.115.55])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp.220.in.ua (Postfix) with ESMTPSA id E80131A242D1;
        Wed, 18 Sep 2019 13:52:55 +0300 (EEST)
From:   Oleh Kravchenko <oleg@kaa.org.ua>
To:     devicetree@vger.kernel.org, linux-leds@vger.kernel.org,
        jacek.anaszewski@gmail.com, pavel@ucw.cz
Subject: v9 EL15203000
Date:   Wed, 18 Sep 2019 13:52:48 +0300
Message-Id: <20190918105250.22855-1-oleg@kaa.org.ua>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[PATCH v9 1/2] dt-bindings: Add docs for EL15203000
[PATCH v9 2/2] leds: add LED driver for EL15203000 board

Changes what was made:
- updated Documentation/devicetree/bindings/leds/leds-el15203000.txt
  after code review from Dan Murphy.

