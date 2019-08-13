Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB2A8BC4B
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 17:00:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729710AbfHMPAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 11:00:03 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:43456 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729698AbfHMPAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 11:00:03 -0400
Received: by mail-ot1-f66.google.com with SMTP id e12so29335429otp.10
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 08:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=OBSBHOWBi0TEv/V0/1s9tAyHS9rLQ+x44wNZD/HrkLA=;
        b=dzbIYMoRiy9vx9rKEBuPcH/mGrArbJfiwJ7ot057oEwafi1mYopo5TS45ZGfU2Tmwe
         SLBPqgIMOrEkCecn0w57P/yGOR/d0N23xNAgHwxYLkMRv5H+NhgbobUFp2ICtHe5BRH5
         GbIm4qBk6hMIm+NPgLSYJgtDYxGY7QDf7AIpMTT6sktBJYnpLjG3FK3zI1obJ75IUzvc
         CwZwYPupTtwIOGSkKBn71MZLcIk+Gw1yi1TZVHVhBvmHg6zL06/3TKtlmSTECtHfpSl+
         SYIopnbJP7tqKWRjn6KfBfDEEk9A3lazC9zFZFqtAQ4BKm6TdFY1hy6XJ1fekCbmULHI
         RG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=OBSBHOWBi0TEv/V0/1s9tAyHS9rLQ+x44wNZD/HrkLA=;
        b=obBNIgL00fxqekH3tGdpZR6bu5xqpnU78wQUXCDyiwpdEMwXHuz1US+a+kV8JcpuiW
         KA84BHOitT5zBvGtJYmp1b3Xb3O0vUGaHk0YPfbPz4LgGisM4qReCCOdfGHrHjCLhFK6
         nt7nBgxpxWlm7QvMXkj5v+sBAdepg92i2Ibgm7AHaG+Z0869lmbh20EhrM0YHdXOsqXo
         K/2CXOFkAqUm5GBCHqEuMK9AKczVQcEScfTAzdC9gTDYqrdQZJnRS0zWeUzhztXjJs6u
         RqbkDM1GLKRd5p5IVzdMCvmOb5wgFtm1cbkwHidJw21c+CbEO/vC9zVib+IP/G0DGVgy
         oyOA==
X-Gm-Message-State: APjAAAWsL0ZFi+kBvNjVm2UmDIeMdjOFaFJg9bsl/WfAHOPz/G/LSv9s
        BIyYCci0qGBzXlZgHTRq4WA1vw==
X-Google-Smtp-Source: APXvYqzyvc5FubiG3PND2CV+AkpmsPRzV4pLljW3e2iTjvTSUTJIOAqABu4MArwAhjoI85WgQ/29gQ==
X-Received: by 2002:a05:6602:2193:: with SMTP id b19mr35481897iob.113.1565708402482;
        Tue, 13 Aug 2019 08:00:02 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id j5sm81309698iom.69.2019.08.13.08.00.01
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 13 Aug 2019 08:00:01 -0700 (PDT)
Date:   Tue, 13 Aug 2019 08:00:00 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Bin Meng <bmeng.cn@gmail.com>
cc:     Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH] riscv: dts: sifive: Add missing "clock-frequency" to
 cpu0/cpu1 nodes
In-Reply-To: <1565158960-12240-1-git-send-email-bmeng.cn@gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908130758550.27195@viisi.sifive.com>
References: <1565158960-12240-1-git-send-email-bmeng.cn@gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 6 Aug 2019, Bin Meng wrote:

> Add the missing "clock-frequency" property to the cpu0/cpu1 nodes
> for consistency with other cpu nodes.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

Is this being driven by a schema validator warning?  If not, and this 
property isn't required, it seems better just to drop it.  It seems 
useless?


- Paul
