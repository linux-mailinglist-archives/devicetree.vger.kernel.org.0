Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A6821D8EDB
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 06:40:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727041AbgESEjm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 00:39:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726045AbgESEjl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 00:39:41 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 579A4C05BD09
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 21:39:40 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id t7so5126366plr.0
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 21:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZAPvHj5Iz3Ftjdix142LiJqbE8y7i/6zN2vWrNmBAKQ=;
        b=LmHDw0rfnSpQsZoiYqtW6CqTVcmNwkNRpnVMvAttARPRTgb2pd/VOi7jBnYONPwjOQ
         DJWjTq14ZdnERAHxPHJUJb3XvjKEpyZN/mPAUv4BccaQL2aKkuiKYQS3oyG5xTjho/tx
         Epn4+O3beN+OBR6c0QSts9HBUH+fquYolZQOFZj5znH0wXI/GGpFhz3dDXg3XD+cB7Kf
         Y1iq0d0bdAvETpY5jNZQCwcJ5vw9s7TXRQ61pbLOUNiTBjvXP4gogMl3EN6srVJGeF56
         /ScQNNrRlFNfD+ROYLaEc+UWIL1Ry4WsdjNNx2b2+7hMl5YNeUJ4A5CbN294XL3PVuJD
         S0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZAPvHj5Iz3Ftjdix142LiJqbE8y7i/6zN2vWrNmBAKQ=;
        b=cmcsQP5Q4iSel8Dw5rw31elL8xHzso84i1clQKF4OVEEKxO/+W/ZfO4T/i7j+dsOtV
         8tEj6usFASr6fbOvLfK7YhEZcHrWpjL3KBSTnTRtaDC2/UZA6kmGZtVu9IUvdWS5GZKs
         9eVex3TQBmQVU+bPIph4pxfLH7tDMR6KF0ELlw0ijihbox8GxM0zfUlofmuPfnPb4KrI
         XwphfRoQkZvatE6loDUxbuhNOqeV3w/kGUY1Kltrqhfe/sPhpBbPKzk+NZQRkhFUL1y1
         DW038kZCd6wbJlUc7o0phLqH0z+BxA2PqfG2gDhvMep+H/NnCGU3zWwcBoMfNVU75aYy
         TPfQ==
X-Gm-Message-State: AOAM531DlT9GWYyX8+wqWK/S60RsYVFt/C7EmY872/AZhOhP9j9bq6U+
        3LjePDF/ay75R7kwMgggNd1+mg==
X-Google-Smtp-Source: ABdhPJyvUirdWCddP73pjyN4rpYdUCMRoa6I4NFKNw4qRdUzaA3MpceqCL4XrFgshHH3ywNoKBN9hQ==
X-Received: by 2002:a17:902:988a:: with SMTP id s10mr18733800plp.204.1589863179415;
        Mon, 18 May 2020 21:39:39 -0700 (PDT)
Received: from localhost ([122.167.130.103])
        by smtp.gmail.com with ESMTPSA id s36sm3564561pgl.35.2020.05.18.21.39.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 21:39:38 -0700 (PDT)
Date:   Tue, 19 May 2020 10:09:36 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200519043936.w5tivskyxhaholux@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <CABb+yY1wJMzakpz0h6ZxAh4Z3OB718f+Wq3RP0R4NZ_U=vRMkw@mail.gmail.com>
 <20200518073514.tjodf6qxg3wjzyb4@vireshk-i7>
 <CABb+yY0vihfQSi=067AUNZd8sHACJ_4CKvFvsoCfweVuL=RD0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABb+yY0vihfQSi=067AUNZd8sHACJ_4CKvFvsoCfweVuL=RD0g@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18-05-20, 19:53, Jassi Brar wrote:
> That is a client/protocol property and has nothing to do with the
> controller dt node.

That's what I am concerned about, i.e. different ways of passing the
doorbell number via DT.

-- 
viresh
