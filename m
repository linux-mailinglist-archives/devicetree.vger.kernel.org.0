Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A324CE34B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 15:22:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728402AbfJGNVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 09:21:46 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:39902 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728164AbfJGNVp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 09:21:45 -0400
Received: by mail-lj1-f193.google.com with SMTP id y3so13633114ljj.6
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 06:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9VnY7oyb1nvuj9ddTAC30yl2C1zPK5euQfGRtoYt3AE=;
        b=JEpHRdd9Da/yv0DPUmIpUR6s4h3YbVzoztyMA8CL9/TgFewoVAN1/NrpFqEhKRTGtg
         d3v8veDnDcbrO0guEDNFs+k6OotYXawrL8YKNYjZicss1Vt6XOSh0Ci9F9loZcUryIkP
         JEJmeFFuqWznQnA3QFcS9tW5mLDE3gW1UK8iw14sDQm3+sCeAxxU5+U4XhgYFbXiSgmA
         MK8EgUFiRtcEwRvS9YvQUmUfbTSfbD0PGblyjjuPIDNwucClrw1LgIChyaUM1EuyDIJ1
         9o6G5ykv2yBEh99KpEr7oCPdf+tes5QvRYMaPgjEdjKObIFVJyKnKFX6mUFwiMmlWjo7
         H1hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9VnY7oyb1nvuj9ddTAC30yl2C1zPK5euQfGRtoYt3AE=;
        b=V9eAvEGhJGgWYpTR85KPq8c9qP03f17JuEmeqtFFXm9yGg3Lo5yWV6Vsq9sQ9jOVx/
         v7R5OcWydn19EVKc/ENrcKXY8o8z/m2DjaWADePSIwWlpyAGGFRsjIUN1kbhkvwCvFTr
         sYNidB5Eyo4dQppgMJbysL8v1ur1vw8BJ+9EwlIDBNAMYeYwtqkxqmYzHDbN6L5HCKaY
         WTRQJ2QCU9t3Q77DHvfm0EbYuOsZILjpQV/Idd/zwGPnUaCy2JH45BBdP+Jh1Iez16za
         k18BRKUXGAmB8P59QXWPI1/FeImki0mwnW5DZ/0cbEBKQZG7N+A7LLh1IO69NTfvLfqD
         QQzg==
X-Gm-Message-State: APjAAAUsNFqIUbFIKv18YjPE5thFZ4IB4Yo1maekDGLolJyoOzSIOGow
        eEGOIIzBbZUv4CCchBMvbTIsVfoH3TpZ1A==
X-Google-Smtp-Source: APXvYqxIKidLkPUfNYBYNvrGjL6HgleWWzc8zpaiOSk+3sO6eInotFeBX5WEtWwVRWuMt+rfY2Fv3A==
X-Received: by 2002:a2e:6a0f:: with SMTP id f15mr8017513ljc.17.1570454503343;
        Mon, 07 Oct 2019 06:21:43 -0700 (PDT)
Received: from marek-VirtualBox.ccr.corp.intel.com ([78.133.233.210])
        by smtp.gmail.com with ESMTPSA id y3sm2894932lfh.97.2019.10.07.06.21.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 07 Oct 2019 06:21:42 -0700 (PDT)
From:   marek.bykowski@gmail.com
To:     robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
        pawel.moll@arm.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Marek Bykowski <marek.bykowski@gmail.com>
Subject: [PATCH 2/2] Documentation: Add documentation for CCN-512 DTS binding
Date:   Mon,  7 Oct 2019 15:21:15 +0200
Message-Id: <1570454475-2848-2-git-send-email-marek.bykowski@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marek Bykowski <marek.bykowski@gmail.com>

Indicate the arm-ccn perf back-end supports now ccn-512.

Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
---
 Documentation/devicetree/bindings/perf/arm-ccn.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/perf/arm-ccn.txt b/Documentation/devicetree/bindings/perf/arm-ccn.txt
index 43b5a71a5a9d..1c53b5aa3317 100644
--- a/Documentation/devicetree/bindings/perf/arm-ccn.txt
+++ b/Documentation/devicetree/bindings/perf/arm-ccn.txt
@@ -6,6 +6,7 @@ Required properties:
 	"arm,ccn-502"
 	"arm,ccn-504"
 	"arm,ccn-508"
+	"arm,ccn-512"
 
 - reg: (standard registers property) physical address and size
 	(16MB) of the configuration registers block
-- 
2.21.0.896.g6a6c0f1

