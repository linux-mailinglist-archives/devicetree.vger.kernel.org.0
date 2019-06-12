Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 586C941F64
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 10:38:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406336AbfFLIim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 04:38:42 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:39921 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406299AbfFLIim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 04:38:42 -0400
Received: by mail-wm1-f66.google.com with SMTP id z23so5579574wma.4
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 01:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=73CrIHEXuQUZeET/GcqX8rdQIUtJYJb3U8bvrSHkrDM=;
        b=WZalBINUFcOHyDb0rkiVJFWzDPwAlgL2Jo5WhElcjlmQDC0vHEnxuxt96PkKdDBY/Q
         JYhCK/XtFB9voateeZrxvff7lNbZfEyER0VOXAlydwJNMWCC1XVsmPJtyXe+aw4JNQ/+
         0gceVjExu8mpLcXm12VADkkkM8V4MhStXgQ/28yNfjT/QK+CrxCHMYY7WtcSvcE8eE6J
         yHJoqEjzW/+MdPcuwRgWYNpvcP0Mp4fYnwst1SH+ElG6Ovxi3HiN7hAvLOQ1A4+DC1TP
         8BvO6lQ/awN9F3biFDxEKclA+qTEazW66Vzwr0Tx6K3lg6W9Q9tpiuIYGtIDrfh7VQuZ
         dpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=73CrIHEXuQUZeET/GcqX8rdQIUtJYJb3U8bvrSHkrDM=;
        b=Me4hccImstcHDiklD1FvOIIVMS80lMZ6Z87MHv1lh9IhcVOvYfM4SBbGXrfPzXXG3i
         qmzap3ECcrHH2uDiZ1yorNYRvwaRenWiAL0teJIphYoTzXGscEZFncGjlHN50e5YDw+c
         2x2oJ1vgFvZ1ty/VznywxmEHjiXJg2jS7vgsUJyjQ6kG3KD8E78TYttvJqS18KNNmqNn
         sCDCRQ45gN0SsTF+4HgIuAbN4DG3VsT4uJJSxcTbYXnoWAwc9F4IT721dunnoFRCA9uO
         AlkAsTrw7FGBjy8NLkm09R3+AqMKKtFAG2zp91iNw9tWaBteIRsS4mrpPMBk6mZynOSX
         Y8KA==
X-Gm-Message-State: APjAAAUXN77Za1Puwwn7+XV+NThXJfRj80EnwY6aTC97VIvD4QP5MDx3
        9fQ9xGGEP9FNhO7tVXBwV7oifQ==
X-Google-Smtp-Source: APXvYqwZD2mzXxw9OeO4fKkiV9+G9jBZOreZ1wd7qKmlq2YewI+0UAZKMSryD2WK/JA+ZsZWGPtJAQ==
X-Received: by 2002:a1c:6154:: with SMTP id v81mr20631257wmb.92.1560328720395;
        Wed, 12 Jun 2019 01:38:40 -0700 (PDT)
Received: from dell ([2a01:4c8:f:9687:619a:bb91:d243:fc8b])
        by smtp.gmail.com with ESMTPSA id y6sm1520209wma.6.2019.06.12.01.38.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Jun 2019 01:38:39 -0700 (PDT)
Date:   Wed, 12 Jun 2019 09:38:35 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        patches@opensource.cirrus.com
Subject: Re: [PATCH 2/3] mfd: madera: Add Madera core support for CS47L15
Message-ID: <20190612083835.GY4797@dell>
References: <20190530143953.25799-1-ckeepax@opensource.cirrus.com>
 <20190530143953.25799-2-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190530143953.25799-2-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 May 2019, Charles Keepax wrote:

> From: Richard Fitzgerald <rf@opensource.cirrus.com>
> 
> This patch adds all the core support and defines for the Cirrus
> Logic CS47L15 smart audio CODEC.
> 
> Registers or fields are named MADERA_* if it is part of the
> common hardware platform and does not conflict with any other
> Madera codecs. It is named CS47L15_* if it is unique to CS47L15
> and conflicts with definitions on other codecs.
> 
> Signed-off-by: Richard Fitzgerald <rf@opensource.cirrus.com>
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
>  drivers/mfd/Kconfig                  |    7 +
>  drivers/mfd/Makefile                 |    3 +
>  drivers/mfd/cs47l15-tables.c         | 1301 ++++++++++++++++++++++++++++++++++
>  drivers/mfd/madera-core.c            |   44 ++
>  drivers/mfd/madera-i2c.c             |    7 +
>  drivers/mfd/madera-spi.c             |    7 +
>  drivers/mfd/madera.h                 |    6 +
>  include/linux/mfd/madera/core.h      |    2 +
>  include/linux/mfd/madera/registers.h |    5 +
>  9 files changed, 1382 insertions(+)
>  create mode 100644 drivers/mfd/cs47l15-tables.c

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
