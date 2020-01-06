Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8C0131B08
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 23:06:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726713AbgAFWG4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 17:06:56 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:42891 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726731AbgAFWGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 17:06:53 -0500
Received: by mail-oi1-f196.google.com with SMTP id 18so16244521oin.9
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 14:06:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=J+PYNm7dQL8K14ScybU+6pQ9OSx67pufTIOMHAwIfCo=;
        b=rU1I6MeDcxWWrYiCWB1qyAPfwiryuDxT1ma4SNrZJ8Q4ngrZO7W5OGIehxSzUSqQNZ
         J1jqs5pDKToiADHIHcoytfx+71c5nC2HhDPh30EW/jtX+sVNVZnMvIj5QUTJvPB+oyZe
         QE5PNc9jDt2STSt5Mcg/Z5sJeMpkE9IMf4lyshyVSwP4RhIGPf1205NtDpKs7q27u6yK
         GR3rVanO5zCKKr2xkM9+k0yD0fekA2qzv9F6Ij786AT+jogIfVVgCt+Sgl4RnFWpHJFE
         IYQe9T3pKQNnXtZJTwNSVwfAJjNjia7DgGDbzpTf4xxS0479bb7/5CWZkIbw5UndzFWI
         6lyw==
X-Gm-Message-State: APjAAAVrOU8VqWmn79KG2+61kyDjDD5nAOGppi7DVxG8lZMDIDEf+iMm
        LWCh5LNQsBYr8hxUHAfmtZdiYtY=
X-Google-Smtp-Source: APXvYqzjIBn+ncOKxIxDuvwaDofLKfUeZpOWIDHSgQJQPd5ePHBF3zra1XnFnfABgFs+xgyGoQSjGQ==
X-Received: by 2002:a54:488d:: with SMTP id r13mr6198282oic.115.1578348412766;
        Mon, 06 Jan 2020 14:06:52 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net. [70.5.121.225])
        by smtp.gmail.com with ESMTPSA id c12sm21925938oic.27.2020.01.06.14.06.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 14:06:52 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2207cd
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 06 Jan 2020 16:06:49 -0600
Date:   Mon, 6 Jan 2020 16:06:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        Vikash Garodia <vgarodia@codeaurora.org>,
        dikshita@codeaurora.org,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: Re: [PATCH v4 08/12] dt-bindings: media: venus: Convert sdm845 to DT
 schema
Message-ID: <20200106220649.GA15045@bogus>
References: <20200106154929.4331-1-stanimir.varbanov@linaro.org>
 <20200106154929.4331-9-stanimir.varbanov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200106154929.4331-9-stanimir.varbanov@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon,  6 Jan 2020 17:49:25 +0200, Stanimir Varbanov wrote:
> Convert qcom,sdm845-venus Venus binding to DT schema.
> 
> Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
> ---
>  .../bindings/media/qcom,sdm845-venus.yaml     | 156 ++++++++++++++++++
>  1 file changed, 156 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/qcom,sdm845-venus.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
