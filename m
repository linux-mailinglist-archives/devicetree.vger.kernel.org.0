Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C45133EA878
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 18:22:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232021AbhHLQXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 12:23:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbhHLQXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 12:23:00 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CCA2C0617A8
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 09:22:35 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so16037758pjn.4
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 09:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+SoaWmY5HiaLZfPNIYOXjYhH2JlGFXeFO+klyMpf2eo=;
        b=IRw62K5TM6LB1N0TTJ5Kldi9LyBoBKWJbFxSVgLXGRqAKzkE19sQmwsJNHbZCPJln3
         ZGrxdRhwh5xhb8HNvwm92fAJUdug+S+aQni/EOqfPRdcdvji+eQh8HZvjBADOv0e4sSp
         qtdLuBLJNiqj9nhbPcT+0TzkPYkQwqFF1jU1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+SoaWmY5HiaLZfPNIYOXjYhH2JlGFXeFO+klyMpf2eo=;
        b=GwJZozHZF4oRIBFW+/uQBMXOPguV/vHxQCsnt/7lAURH5kdzF5PByX1fpRlCIwZb2W
         Y9ycEvJ8P+YfclaMSiboG9ZEWd/JpKn/5zt7gfVTdu4gMk0U/E+qPyVs7gt+Jk9BcGxM
         wKPM2JLU6TSkoEEZjAXcfrtxuV+2i39qZwKCpx+yXmA2tZ0JfwvZHPB7XhmLuLLCiavh
         60npvxmg62AvTxxvkmxP57PqoXTIvaULkd17xAp2tfSJ5ULtdZ2NROiTCk5LamL5hjIy
         QOHXZURx8Z6IvZ2Y6soGpKFDwQiEysgCZEtJcequLxP9ADnmsZAzgFKwoe/az+Q7FKvo
         HblQ==
X-Gm-Message-State: AOAM532Y0jsu2BcXZE94SYecK17U1XJ06RsNueN7yneiDQOkzf2MUc+2
        qLMIrpuTEbM1vAQSQOyPQ7kmug==
X-Google-Smtp-Source: ABdhPJwuvudA8aD0i3KortJevgnnespzG+N9CipcYX1YDChnc6LJBuJn1QL7lVDg9Wu6s465uHVfEw==
X-Received: by 2002:a17:90a:b284:: with SMTP id c4mr5157016pjr.213.1628785354590;
        Thu, 12 Aug 2021 09:22:34 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6683:43e5:ba4c:d76c])
        by smtp.gmail.com with UTF8SMTPSA id n20sm3694942pfv.212.2021.08.12.09.22.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 09:22:34 -0700 (PDT)
Date:   Thu, 12 Aug 2021 09:22:32 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, swboyd@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, Roja Rani Yarubandi <rojay@codeaurora.org>
Subject: Re: [PATCH V5 3/7] arm64: dts: sc7280: Add QUPv3 wrapper_0 nodes
Message-ID: <YRVKyJmJgwQObwFQ@google.com>
References: <1628754078-29779-1-git-send-email-rajpat@codeaurora.org>
 <1628754078-29779-4-git-send-email-rajpat@codeaurora.org>
 <YRUsr6x9vqvaBB9i@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YRUsr6x9vqvaBB9i@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 12, 2021 at 07:14:07AM -0700, Matthias Kaehlcke wrote:
> On Thu, Aug 12, 2021 at 01:11:14PM +0530, Rajesh Patil wrote:

> >  			qup_uart5_default: qup-uart5-default {
> >  				pins = "gpio46", "gpio47";
> >  				function = "qup13";
> >  			};
> 
> Wait, why does uart5 use the pins of qup13? Is see this is
> 'fixed' by '[4/7] arm64: dts: sc7280: Update QUPv3 UART5 DT
> node' but I'm still surprised ...
> 
> Doesn't 'fixing' this break devices that are currently using
> 'uart5'? It seems those devices would need to change from
> 'uart5' to 'uart11'.

Apparently the above configuration is bogus. I checked the schematic
of the IDP which uses uart5, the debug UART is on pins 22 and 23, aka
qup05. It seems uart5 works in spite of the bogus pinconf because the
default for the pins is their QUP function.
