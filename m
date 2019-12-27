Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4320712B02A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2019 02:24:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726193AbfL0BYG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Dec 2019 20:24:06 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:54538 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726806AbfL0BYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Dec 2019 20:24:05 -0500
Received: by mail-pj1-f67.google.com with SMTP id kx11so4057435pjb.4
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2019 17:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bZGwwBs0+6wjFWF5xEm+/9dLXTyLkBQWZ94+6z/JBpE=;
        b=K/mUbr701M92ISU0kMifSC+j0Z/biy7G5mB4E4nvDyaG4m/U43mBEDO+B/BiZFJzCq
         5AJ9Ll+vdNnQjturr7JjSFGAmE2HYkq+cDC6gENPBqiZBsWg8XwUlQm9tO7vYA1cRHhT
         n2HD7XydzDPqnOITnIdoZ2kD13Pvopx37unwWwVBhnyggAZFAKt+TBVS0nQr5WWMR2Wg
         TiDA8PB57nC2x/WcKnkYvycu+NPefQY85lwEItMETKPDuAjyeIqJqjgi8yHDddraIjUM
         yJj9Tjb0iKX9+LbxP1JXuPYAVcRrSspr0LkhFnLvhrmdtFcsjXoz0EgNAmVyV0M7PbvN
         cqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bZGwwBs0+6wjFWF5xEm+/9dLXTyLkBQWZ94+6z/JBpE=;
        b=fDy8Q9GujME67lIXb3gigUWWwGBVyiWBhVieuubid1pWtJ9OQDIxEqf15McTgTsyHc
         wCUJAvxC+w+FX1kDdh8xl56m4Hs2Qia1mlOuxByoPv3ShMfMQUyBs9ma6Lzl/EkUIeoq
         6wf4QoGyvf9CX5KpFxJ4Qg67+X5XAPBWsoQIzuejAZJFabJZ+rkgPMMV/5H4GcLGDMxd
         A5DIXIAEY9sgsJm9/JB2nYhPxk0Er9jBn93Yj6t9vvoAacmwfxWxgfF4Y2KpHtgn8KhV
         qFqKKNlImjNt9VQ1jKy8apT28IfJwURZMFjpkta9bXCBsbgWC6Iq6U8tkrh7Yr3+Dj2i
         u9Jw==
X-Gm-Message-State: APjAAAVujqc5IF1PqgnFflS1zRKTDcu5gUIc16uI9RrLdbhg67b246Ff
        Tz2h074hY6g551jP+Qi0RT9mXg==
X-Google-Smtp-Source: APXvYqzh0FoNDYeUyJDwrPL52Vfp1xeNK2adiqJa8UWMQ6lp0+cUi22UsEt4mkLL5pR+BkRNYUOVXQ==
X-Received: by 2002:a17:902:bc8c:: with SMTP id bb12mr33713668plb.218.1577409844600;
        Thu, 26 Dec 2019 17:24:04 -0800 (PST)
Received: from ripper (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id n188sm35364210pga.84.2019.12.26.17.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2019 17:24:03 -0800 (PST)
Date:   Thu, 26 Dec 2019 17:23:49 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Helgaas <bhelgaas@google.com>
Cc:     Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] PCI: qcom: Add support for SDM845 PCIe
Message-ID: <20191227012349.GG1908628@ripper>
References: <20191107001642.1127561-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191107001642.1127561-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 06 Nov 16:16 PST 2019, Bjorn Andersson wrote:

Bjorn, this still applies nicely on linux-next and works as expected.
Could you please apply it? Or would you like me to resend it with
people's tags picked up?

Regards,
Bjorn

> This adds support necessary for the two PCIe controllers found in Qualcomm
> SDM845.
> 
> Bjorn Andersson (2):
>   dt-bindings: PCI: qcom: Add support for SDM845 PCIe
>   PCI: qcom: Add support for SDM845 PCIe controller
> 
>  .../devicetree/bindings/pci/qcom,pcie.txt     |  19 +++
>  drivers/pci/controller/dwc/pcie-qcom.c        | 150 ++++++++++++++++++
>  2 files changed, 169 insertions(+)
> 
> -- 
> 2.23.0
> 
