Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0DA9322AC
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2019 10:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726159AbfFBIGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jun 2019 04:06:35 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55779 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725925AbfFBIGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jun 2019 04:06:34 -0400
Received: by mail-wm1-f65.google.com with SMTP id 16so4095857wmg.5
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 01:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:subject:message-id:user-agent:mime-version;
        bh=i/hfo7Of2DjU/8nVgdxSdJ+UmmcoAojSd1TjlivmETA=;
        b=Ll60+3BZiHid5SgkpYwizKijDVwyt1HV2OpUrbc8J8NB8P8r6CkJaxjXsjH35mxsCD
         tAY8qqva2kAsJAXuLW/tH0H22Vrh9LIBQwrRo2l0HFsG0G0RnnYkDhvmnmVKFhV/rUDE
         jN4FSaV7smkDgYCURREGflCB1u2TgSfDqe8W4IWO7djrzgfuOyybdt6OX5BSPbidfAwF
         +lyTjoeZ+pebzC4o5M2gO2ZX5cXaApOwDiyknZZnqqiC1AM1Us07ptkVViKOYJrMDv10
         8iFPjgvLgsXjiPMBOFj79emU3G/kHTaAJz8+2rWoLMuVaeMPiOQmTZBQTGfnzo1dxwdw
         XADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:user-agent
         :mime-version;
        bh=i/hfo7Of2DjU/8nVgdxSdJ+UmmcoAojSd1TjlivmETA=;
        b=j8CYBAK0M7ShSeZ4qMIUyH3zxHwq0wDG1W8GO+NDd8UuGIjUlHSiE4fNASsAbu0+iB
         +rxzZ8CIfHGs59y810upw+Ns951cs2eRKlLwNFKEEIEpXXNeAhNTyryFux1s1d0w2f48
         c65CuCXOoVDwZ+OZf/ZsFrEGHrzhUJwo10SnbJ4R6SsceR5/ikDfuNXYwzS0oQW6CNjs
         crFwPOVQaTSq0KD3AhnJ6EL3qvrKVau2uC9qHp0ZDDbD+bHfe+yGTWTbBDsgQOpcKefL
         n3MWmvDhfCI1h+CxzOPpP0gzJyIunrdCu2hRuOAtlTvRu4hD3yoJxSwEqgz3D+Yq3jht
         QlMA==
X-Gm-Message-State: APjAAAUxbWFYns9fplWdzj/tSINZNUXYdq0YUZ5sOZvXlZik/CMT9mVL
        /wiDpQ/ESeYdQRxNVTMziLmgag==
X-Google-Smtp-Source: APXvYqwZ99le5sUXEkN7ObI0zUL2ItWFAbjGlxqe/xcop0Jrfu7KDtSlyao4dJAC/Ft0y4H32SIjeA==
X-Received: by 2002:a1c:6346:: with SMTP id x67mr6301480wmb.16.1559462792596;
        Sun, 02 Jun 2019 01:06:32 -0700 (PDT)
Received: from localhost (217-76-161-89.static.highway.a1.net. [217.76.161.89])
        by smtp.gmail.com with ESMTPSA id l7sm4605025wrt.71.2019.06.02.01.06.31
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 02 Jun 2019 01:06:32 -0700 (PDT)
Date:   Sun, 2 Jun 2019 01:06:29 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Subject: Sorry for the extra noise
Message-ID: <alpine.DEB.2.21.9999.1906020105161.9338@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Sorry for the extra noise on the recent DT patch series posts.  It seems 
my patch posting scripts malfunctioned.


- Paul
