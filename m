Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2A871B547B
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2019 19:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731355AbfIQRov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Sep 2019 13:44:51 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:38867 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725862AbfIQRou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Sep 2019 13:44:50 -0400
Received: by mail-oi1-f194.google.com with SMTP id 7so3631266oip.5
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2019 10:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+s/qabISnLIEozB0TLnSZrtVp76uFpxD8hC7kDMMtxw=;
        b=VTVsd0ukYFfKndF3HujPJ56YJJHJhWjiT06ffVmlXmAFe5yFrtf3M5MhlVoxYVrFGN
         c9iKyg5e26Rxi/H3STqOtTvrJHGvL4EAFR7ahSkzy2zhnnFgw0qV7EzSLTShvQmYAV+6
         bP14F5UDJ4BiAqabqMOyJTpNcUId5jZBNewqw+LnSqNV4jpFjGraWj7KoDEQnU04BNbh
         /P4bvveZv6rKCwabLR0f09yulOK/8p6yleGaAul3DsrtR8rFbPrvjuRbxOqLgUtPPIsz
         Iw0wpdtghZvpCd6u74FkpPa5Mf2M/myN0Bp6Z8nZ6x5t5NJiPAXSEV1nfjxMUXUjusc5
         Wwbg==
X-Gm-Message-State: APjAAAXg7P1lk/FORKLXGbr2cihmHsduNO57kxDAPs7ZySlBlGh4OENz
        YWx5dqxdz6tQy1A9iNtRnz8mRbs=
X-Google-Smtp-Source: APXvYqxwPvuhSYF9WmTQ5yzniwr7QyMkew4qMpaPhUx862mTRMwS73K2MzJtuXEcyyYe6/cLMW/2ow==
X-Received: by 2002:aca:4a50:: with SMTP id x77mr4744338oia.115.1568742289567;
        Tue, 17 Sep 2019 10:44:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j21sm876224otl.70.2019.09.17.10.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 10:44:48 -0700 (PDT)
Date:   Tue, 17 Sep 2019 12:44:48 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Murray <andrew.murray@arm.com>
Cc:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Mike Leach <mike.leach@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>, Al.Grant@arm.com,
        Leo Yan <leo.yan@linaro.org>, devicetree@vger.kernel.org,
        coresight@lists.linaro.org
Subject: Re: [PATCH v6 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Message-ID: <20190917174448.GA22479@bogus>
References: <20190913115312.12943-1-andrew.murray@arm.com>
 <20190913115312.12943-3-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190913115312.12943-3-andrew.murray@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Sep 2019 12:53:11 +0100, Andrew Murray wrote:
> Some coresight components, because of choices made during hardware
> integration, require their state to be saved and restored across CPU low
> power states.
> 
> The software has no reliable method of detecting when save/restore is
> required thus let's add a binding to inform the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
