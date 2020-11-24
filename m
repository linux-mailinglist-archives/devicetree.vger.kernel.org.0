Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D047A2C3428
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 23:42:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732344AbgKXWlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 17:41:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725930AbgKXWlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 17:41:31 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F9FC0613D6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 14:41:31 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id e8so469978pfh.2
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 14:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l/vCM1zaqjeMIFL/HYwIVUFGbrezBw5n+r0B8Fgar8o=;
        b=Fw0GnBicHveqG54K9aQvPDdiE1oU2CD8oj2vpU0bWj32ob0ptKp8vGkj3iK9X9sUke
         s/HpjwnE1xz12jdN0ja0Gh/sdmc2j42IReMvPDyYEbH3OaDN7L2dL2retKj/xbfzIUT8
         m0Ctczz5cUCXFFV15Hg9ONyR4+Sf/ncUjuOVBD3HhS59hhum/x79ZuJMApgqM6EGlEFK
         pOk1y2oDogD8pTweIHg+qYXqD2/4pxl9Z+rntf87iOrUSAXzp8HxMp5YWbjp71cBbGE9
         rs9WwMIvO2O0IQb0e0YiCVAz07ZIpYV676WvKc9FnuEALaduEslH3n2NeTGr2IwhFGTJ
         ItUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l/vCM1zaqjeMIFL/HYwIVUFGbrezBw5n+r0B8Fgar8o=;
        b=igimHHOZxoA39WaEfFi48MXwzbIrq6X4oWU2Xq2RUTrvkNX+g36wiJpjVWp5lBpOYq
         6IvG4yx9r9m1fho4hUesxLvRcSwpfnm9I3GOUO4/aOF8CJT42qi9gWykC+3fBmwjm6bg
         JOAq8f3rrYXNCH7eTSY98ngXX+359TU2C3pMKs873M67yDMyeI8vYQ4g6XubA9mxUHhj
         lMkTMF7SV/mlIpdRQMcBj1o1kSWz1ODftenMfveW2nQGDFDgNQr1rST2zztXz8MX574a
         ZOUDV/1NCiNkWSlDmjlglxjKx8dJwa+Y3SKTUVlK8fzciQ2wPA2nbnWWKafOCFn3dyHn
         vMYg==
X-Gm-Message-State: AOAM5308VnlbuW43g8FTXLo9mps/+rQncRCih6Ko+AjLM2UR8T89wcbP
        Vz5Br8QHrPz6tLJuRAoL4TU=
X-Google-Smtp-Source: ABdhPJzSzWWMTtJhzJCRtx7HMVTjp2r1dzIGTKUUv0v/oJUbbFPrff0dyrQYs0arpxrpoqMpOVXADw==
X-Received: by 2002:a63:e809:: with SMTP id s9mr522115pgh.138.1606257690621;
        Tue, 24 Nov 2020 14:41:30 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id l190sm61742pfl.205.2020.11.24.14.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 14:41:30 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V4 2/3] dt-bindings: arm: bcm: document BCM4908 bindings
Date:   Tue, 24 Nov 2020 14:41:28 -0800
Message-Id: <20201124224128.2256366-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112150832.26474-2-zajec5@gmail.com>
References: <20201112150832.26474-1-zajec5@gmail.com> <20201112150832.26474-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 12 Nov 2020 16:08:31 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 is a new family that includes BCM4906, BCM4908 and BCM49408.
> It's mostly used in home routers and often replaces Northstar in vendors
> portfolio.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
