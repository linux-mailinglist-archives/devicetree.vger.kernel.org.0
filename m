Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2B1F2F44E3
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 08:11:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726471AbhAMHKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 02:10:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726406AbhAMHKx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 02:10:53 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D6A1C061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 23:10:12 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id o17so1251258lfg.4
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 23:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+/pBhauD9iMZd+xMRU4y14ijtDyoPm3QaKcps6L40wk=;
        b=I3wGrAgx4q012IWGk7k02xJheFeW2a6rV2zbuPE6HbbF11mI9aZQ264yJe+KDDyl08
         Vkqmyybef8z1BZaR/x16+5l8B36Du/LSVBGlZ8p9CRExoZI2UCPBDObdUlxTlPOq5iWf
         f6yqqj/C6LwTjoFIy49kyusRBKjPKoVV9LXZNiY9Xj/SOyBAWjPSzW3XqlUGr9C2kJ/Q
         BMIJ2CU/f0rtByHBnlCxcolJmn/kgd1YxfVKbeOZSHV0xBdY/0LMGluXM8gHop2LVdnE
         E6NHZnosG6we0vXOqCvuLf8Dd/Y+h7p8UvkBsJalkCcntC773raG5GlnUAQjNx38jI5H
         EYSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+/pBhauD9iMZd+xMRU4y14ijtDyoPm3QaKcps6L40wk=;
        b=Rpb4Bx0s6ANY401USTr6YFQTUQKEG3Q9pAsW9y1fWf7Tq+YcamBnSXl/GIKBxFsfPB
         C27dBqITMuuegHKU6+YJufHuTw2hjvRjaiJHjxjusnoQnIyj6eOSQQ2/+Is3Bg5BNPa0
         UAg5+Og5O+XcTFlpB80zUG8MA4Lxnf3KUoQ+ghKvQ5rZAx2Uo2N6QY8Xc04sXwY/tfQZ
         qBV+OJCiL1U5Y26Oj1GO+w/BhZEy2VlY08hURGRXx5WtggDXyVtM+0T4OUzpEJiByzFX
         MAzcKL/ZOdSIngPk3ykakaaHwFbEIBTXSa9SbLAhrymSzca20eNIpgQxgsGWYboua96N
         m7hA==
X-Gm-Message-State: AOAM531Dj4GDEOOQwI++m9tK8f7wui4lGOTo6HandRFdpVzb6BEAYKP3
        qkKlzMjiUvO/hK1upiiLFwcC1Q==
X-Google-Smtp-Source: ABdhPJyyPlo9as+Zp8BtAYGYIDTNSW4o24Bhv8muct33wYYJOjvnm8WhGZjl/c0IC7yXWTUpEUf69A==
X-Received: by 2002:a05:6512:789:: with SMTP id x9mr221266lfr.487.1610521811140;
        Tue, 12 Jan 2021 23:10:11 -0800 (PST)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
        by smtp.gmail.com with ESMTPSA id s5sm113757lfc.150.2021.01.12.23.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 23:10:10 -0800 (PST)
Date:   Wed, 13 Jan 2021 08:10:08 +0100
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20210113071008.GA3643006@jade>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com>
 <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
 <20210112180414.ejcuhdf563hraqzx@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210112180414.ejcuhdf563hraqzx@bogus>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 12, 2021 at 06:04:14PM +0000, Sudeep Holla wrote:
> (sorry for late reply)
> 
> On Fri, Dec 11, 2020 at 11:45:08AM +0100, Jens Wiklander wrote:
> > On Fri, Dec 4, 2020 at 1:11 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> [...]
> 
> Agreed on all the comments, so have just removed those context.
> 
> > We may need a way to indicate if we're to use the 32bit or 64bit
> > calling convention. OP-TEE depends on being able to use 32bit calls
> > here.
> 
> I assume it would be OP-TEE indicating it would like to use 32-bit.
> I am thinking of API from the driver would be like:
> 
> int (*32bit_mode_only_set)(struct ffa_device *dev);
> 
> Let me know if that works for you. FF-A driver has no other way to evaluate
> that and I really don't like that in DT 😉 

That should work for OP-TEE.

Thanks,
Jens
