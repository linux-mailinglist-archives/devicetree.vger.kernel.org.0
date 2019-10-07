Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 827FBCDBA9
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 07:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726889AbfJGFzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 01:55:03 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:42705 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727032AbfJGFzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 01:55:02 -0400
Received: by mail-pf1-f194.google.com with SMTP id q12so7906512pff.9
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2019 22:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AMAmAlrNCQF5IxdYH7hkzTWtozT3BR6ErFNtzxt8UV8=;
        b=atmP4DL6UEhJUvwisWl6+SpMtN6TqCYWtzZsbtaCVn3HWzE16d4sNPaa2VkXjUbtdL
         yEDIy3vPiLTaFs+bDL35wQvnTaj4vQ1z60X2458lCSbrE63qSuqTUeJVqrdYbr/nXso6
         EmtHm/iDAV5UUkOuGo1OPecuddClu+bnyclRTtO3psxV2cHEOk571cIaAyxP5teWM4ZV
         KYkTVuD9nuItAGV/ze4IGu5RSIv1673yPekuU2dgcEM3wV/EH962bVASQxlsIolkC+UL
         9qLiVgZZW8nDpTc+Sl+iqmrx4ZIItT4/7iAF0j8RXUchIjffN5Dp+9dZLnWCgRqAAT+g
         xd7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AMAmAlrNCQF5IxdYH7hkzTWtozT3BR6ErFNtzxt8UV8=;
        b=egTZFUIoia4V+e9cLWNUPu3e0ZMZdO57QISmGkx3OpH+7hlveiYTkZTuqolaLRCynV
         RCY6kpxJ7lHCE401kfrOtTAS2gwINIvmk5KgkevDZFD4TKvGS/3XJJLLqJ3ZnHY+uCgP
         Hp5fqu8mwt93sGSajMiUiC2H1WCfBjzGSUG9C03V7Or85Wm88HLwYEJRaQy5vJYm6hCC
         TlLAsSlnFzab+5Nxlqc+b73DCglnZxG8TF5j2EeJVShltLySdKyMzFVfzK/WjKCOgXF8
         L9AdSbOeiuhl21/DfbDTEj24bF+vBS5c6SLUeRPUd11LJxRyyE45lc1wekppHcRwaYUa
         /Hrg==
X-Gm-Message-State: APjAAAXLoBwmFjxauPArT/qggj/EvYo381cL1FkWBoVpWbvAQW/ttJCj
        1/Kq4s4PIuLATq+8MbpHFbwlbg==
X-Google-Smtp-Source: APXvYqwwgQLy9Cnv1L8T/tIaqjwJGpG+9+OtNM6k7M9JMxSmGHbFYPf8MqhOhu96LPo/fBhUY0+LMA==
X-Received: by 2002:a63:61c6:: with SMTP id v189mr21581965pgb.36.1570427700528;
        Sun, 06 Oct 2019 22:55:00 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id d22sm16231326pfq.168.2019.10.06.22.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 22:54:59 -0700 (PDT)
Date:   Sun, 6 Oct 2019 22:54:57 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     kholk11@gmail.com
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, agross@kernel.org,
        linus.walleij@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
        marijns95@gmail.com
Subject: Re: [PATCH 1/2] pinctrl: qcom: Add a pinctrl driver for MSM8976 and
 8956
Message-ID: <20191007055457.GJ6390@tuxbook-pro>
References: <20191005105936.31216-1-kholk11@gmail.com>
 <20191005105936.31216-2-kholk11@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191005105936.31216-2-kholk11@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 05 Oct 03:59 PDT 2019, kholk11@gmail.com wrote:

> From: AngeloGioacchino Del Regno <kholk11@gmail.com>
> 
> Add the pinctrl driver to support pin configuration with the
> pinctrl framework on MSM8976, MSM8956, APQ8056, APQ8076.
> 
> Signed-off-by: AngeloGioacchino Del Regno <kholk11@gmail.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
