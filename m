Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E6579131B01
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 23:06:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726742AbgAFWF7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 17:05:59 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:41425 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726695AbgAFWF7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 17:05:59 -0500
Received: by mail-ot1-f68.google.com with SMTP id r27so73551032otc.8
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 14:05:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dOrlWUldD83XBK01h071I64wECD6WdEMkunkhAq43Js=;
        b=YIqiiU877y0bWoO2983iBizLsGy5ypQralHcjFCBJVZsS0o85CGtjnaSD8xiUcrFG/
         ettqvnd/Uv43ZD5CXZu5uFCJnDoE2DwxbubQXONyXy0tlzOjlTSgebVPv0IknTbpP8NT
         CcLD+UiPrkNzzvI2Naw1qLriUiHhrvYjbYKnRMkfTuqKZqAzFti13wJidorm8lWwgko5
         dp1mMAIugk/IV+u5Ndiv8n/f2NqdQ5xKS64EosvN3h8iMmqz/NTYfMQwDSAH9H0zZUsQ
         w4oU/Q+n+EjkHU5QWeex8aIEQ7gHeZ1Vy4TdV11U29MGevCtmYdEBJdv8POxqn4MZqax
         mpCw==
X-Gm-Message-State: APjAAAVZTmchuS8Z6gh7zKa1YgpN6+Ftfa+0rSMHn9R/cnI62VQ/zkPD
        f86/xlOexRMRdT0Ydpp/kY2QYbc=
X-Google-Smtp-Source: APXvYqxAC2yf9VukUu8GmqYSA6UlZw6arBjajGNijIUOsu7hup4zgEmAsIuviTHZWFA6hfNnlc+iWQ==
X-Received: by 2002:a05:6830:2147:: with SMTP id r7mr15783109otd.94.1578348357700;
        Mon, 06 Jan 2020 14:05:57 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net. [70.5.121.225])
        by smtp.gmail.com with ESMTPSA id d7sm18878876oic.46.2020.01.06.14.05.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 14:05:57 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2208aa
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 06 Jan 2020 16:05:54 -0600
Date:   Mon, 6 Jan 2020 16:05:54 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        Vikash Garodia <vgarodia@codeaurora.org>,
        dikshita@codeaurora.org,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: Re: [PATCH v4 07/12] dt-bindings: media: venus: Convert msm8996 to
 DT schema
Message-ID: <20200106220554.GA13282@bogus>
References: <20200106154929.4331-1-stanimir.varbanov@linaro.org>
 <20200106154929.4331-8-stanimir.varbanov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200106154929.4331-8-stanimir.varbanov@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon,  6 Jan 2020 17:49:24 +0200, Stanimir Varbanov wrote:
> Convert qcom,msm8996-venus Venus binding to DT schema.
> 
> Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
> ---
>  .../bindings/media/qcom,msm8996-venus.yaml    | 153 ++++++++++++++++++
>  1 file changed, 153 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
