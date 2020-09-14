Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACF0D269771
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 23:11:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725979AbgINVLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 17:11:04 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:43296 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725961AbgINVLC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 17:11:02 -0400
Received: by mail-io1-f66.google.com with SMTP id z25so1672855iol.10
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 14:11:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DtTproR0B1SfYDojDR2RnU9uJDks/zmG4+TEAiEXhKw=;
        b=UGGj9arv+zR4CNo0Lj9ArPTdp7f183CQW3iRmEKt5FIp0paY2HAfF8AcyusG02n8iR
         TliWdgjCbTxtLVgR5fvM/2stYK7GT/igRHz4e7C0nBOAWQvCkBeh0XhVSD+/ea8hNITf
         65ny4NtAGg0w/lLWX9Hx8RLF4RL5bCQKw2Pq5Z3w1oJbBGE4j4G9FxmXh0hnxasHAKqt
         P70pD04VjkLSJqv1bYM0gm5BXDhZ+Lwv2cxIGzcYxggajH5h5w5hQQ4tbYgoke0YUt41
         AQUz1gtdLBm3UoVKvl52YPxCAQmW1s70SiRM4bOndZHts3tWsG+UZWTDUfZFh/9yumJE
         sN6w==
X-Gm-Message-State: AOAM531SLaPmcO9DSBQ/wa9c6FN6+mGiI69Im7n6UE/zykDnC4cFbyxK
        uXwW+MMsqchaOss9Hr6yjg==
X-Google-Smtp-Source: ABdhPJyFO+DWQr1yhunVbKk9qFcYuHvteAXHchwWbcFzKtnBww86slNsU+lh18uFHRr9RO05Cj+Qqg==
X-Received: by 2002:a5e:a909:: with SMTP id c9mr12458699iod.56.1600117861450;
        Mon, 14 Sep 2020 14:11:01 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id m80sm7756750ill.11.2020.09.14.14.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 14:11:01 -0700 (PDT)
Received: (nullmailer pid 256032 invoked by uid 1000);
        Mon, 14 Sep 2020 21:10:58 -0000
Date:   Mon, 14 Sep 2020 15:10:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc:     linuxarm@huawei.com, Manivannan Sadhasivam <mani@kernel.org>,
        devicetree@vger.kernel.org, mauro.chehab@huawei.com,
        John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: convert phy-hi3660-usb3.txt to yaml
Message-ID: <20200914211058.GA255949@bogus>
References: <edfeafe6b5a60a84d08095fb380f32e61af46d40.1599206213.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <edfeafe6b5a60a84d08095fb380f32e61af46d40.1599206213.git.mchehab+huawei@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Sep 2020 09:58:34 +0200, Mauro Carvalho Chehab wrote:
> Convert Hisilicon Kirin 960 USB3 PHY bindings to DT schema
> format using json-schema.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
> 
> Rob,
> 
> As I'm about to submit a patch series with the phy interface for Kirin 970,
> let's first convert the Kirin 960 USB3 PHY binding, as it is close enough
> to the PHY interface bindins for Kirin 970.
> 
>  .../bindings/phy/hisilicon,hi3660-usb3.yaml   | 60 +++++++++++++++++++
>  .../bindings/phy/phy-hi3660-usb3.txt          | 26 --------
>  2 files changed, 60 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-hi3660-usb3.txt
> 

Applied, thanks!
