Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDCCF432C51
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 05:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232437AbhJSDiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 23:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232203AbhJSDiF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 23:38:05 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB41EC06161C
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 20:35:53 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id om14so13640942pjb.5
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 20:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=wjunn4+x2QEs4HRrQcozT7INn2DM0lGSHIZkmkDz3T0=;
        b=xvDX15o2MRjF1CUHB3H7b1V6i2cXAB+r56kip5Vptt9/AX64imSaxS7Uo/VcgYAXnQ
         CbqYbKVXgA/MQcfrtv+P50OZRgXov6ypO7/xLbS5uSMWVDjPQsi/9WUofOQvMJrKGT1f
         PrPDIKRL4Tiv5zteLFSKSBCzkPUFskQJMTVATqtRX3Hqv2NCPjxnrRNscyGAu5kUihGH
         5PNjKcILic2iKEYwxivB90yc6v6qYzxWWth6g8NIsC8UNFsUlGCFD4LlQNTvR3KAEAYS
         SrnLKPJs872eeLYJbaRnp/vdgi23i0jsEL64Qp4l2n4BWDGlP17fu8vKcdgSXJ/63UL1
         lCWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wjunn4+x2QEs4HRrQcozT7INn2DM0lGSHIZkmkDz3T0=;
        b=0+q26R2eX1R6hbB8Eb7o8pz8msyaAI7Pfh6X3AbSUUude2EGPAz1KiJunP0qgLg6nP
         n02fyc6BGAvK8toizJKC90RDyUe8XSPDF+4v6yNVbNyrNdc+87EIr4qi/GDaie/9pUOb
         SEZ4BQLrAxUVg6GVgWA4wXpJt2bvXwhsJUC1YlvNHXO6m9QUZTw+95SxjkqwP8lPcKav
         sLMq9r88xgxz0C0H16brE2vNwWoIFJzlMG0xid6mzJB/pQ/xwS1VKFkZ8z9Mi/k2L411
         sKdjgCN6vctfyymMJnz3+oqXZxOXpK47MiMtAajSWRsye9Ya6ZM8bUA4JVdEC2CzM55X
         22vA==
X-Gm-Message-State: AOAM5331ROSKEA7zmYOOH71DjVfTxTIsT0Y4OUuTw5ldbX/8ooKeYTWT
        8Zm6z0gr8vnIwTDNKqrF1rLCAo3z2MIqYhDDt5iaV2H7KUA=
X-Google-Smtp-Source: ABdhPJy4PbkZ+VE8Wv5Uw3+88G4xXMKB0lgHHd/1HQ+RvotrLKPSISeMt6RgTcICJGpOttD6MLxuPwaHOPoLw4fwnT8=
X-Received: by 2002:a17:90b:384e:: with SMTP id nl14mr2242347pjb.44.1634614552822;
 Mon, 18 Oct 2021 20:35:52 -0700 (PDT)
MIME-Version: 1.0
From:   Drew Fustini <dfustini@baylibre.com>
Date:   Mon, 18 Oct 2021 20:35:41 -0700
Message-ID: <CAFTh7p2Bw4j39J8rdXtEyidSXQTN81rPxUmAdN+UHsRr_aMM6A@mail.gmail.com>
Subject: 
To:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

unsubscribe
