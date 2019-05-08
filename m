Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1720C1767F
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 13:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727383AbfEHLMr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 07:12:47 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:41731 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726163AbfEHLMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 07:12:46 -0400
Received: by mail-wr1-f65.google.com with SMTP id d12so6188276wrm.8
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 04:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ky3BBCRDf+4JbYiwjeIBXrtXmRfrGKPHDh9pgyj+wD4=;
        b=xdfP1a29tAJeBZ1FpCGeKNQmRnjCVUWqDh7S9OQn3FHI2JuHM9CY+5bl+f6MfQYL/W
         EXf/iRTyPuxK7+HdmVeAsGCO7ARlELh+Bq3TVANFh9DkMQ9Tgbi8tqyHnRjbVBcE9udl
         wCXXqxVTtljA22eU1kd02+z+P2Ijd8pJVHIYRQhr9jbTMBHzFkFyabctYRhkhJFDWToL
         jlnTzoMPm2KyUZKpt6kNc9Pj8FNklCma2K+OvmmAryNNPb2PovZl5TtnBbQNq8qb9I53
         zZmW2N/PJu8Hu6MGMq+QDPdWKB9iKh6A43T7A4E/92FEzMhM5lEl0SgNpuSHAMrpszq8
         njCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ky3BBCRDf+4JbYiwjeIBXrtXmRfrGKPHDh9pgyj+wD4=;
        b=VZa2HHSeu9hkyVQ0jG7P2meqx1W0ogULEPn7tgWqILi1BDIhpzgVzJ1YhVnyFhHEUM
         ppKx8QE4Pq2WrCPTBgZ1w7DC4ulIulNPrjONj+22WzCOmFkDJ+s9n0j7pIXlYDmbUFn3
         o5hpaOe6l7MX4UBXGtGgLS3FAX6i8J0AcpTDfiPtV0jNkA4O+6YSWMefPDNfakzrL36W
         T0luYskPDy5DDVswor46urotTudFTUGL0wNfZuLfgQTZoIPGuBp67gR+GLwPqrXhvo2Y
         XEjN17w8XAK8RgqTt65paWuGNs0DURUNBE54+S2oCbZNebfL7DzeOODlFYp1m/lfM+qh
         ivgg==
X-Gm-Message-State: APjAAAX1SlWueaX5XMegwKTb2+ADH/Vmlw3nmGB9T6xzpxNf2GfNqIx3
        bjSNiSVjvqny5zCZHSIjOXfaVQ==
X-Google-Smtp-Source: APXvYqyV5OlO7cfNwTM/9vhEjjJ6bdEUqsDyZo5DVQk1vrVplb3Xpj3HAS+fHxUumFyol9WxkOlmPA==
X-Received: by 2002:a5d:4e90:: with SMTP id e16mr3794077wru.312.1557313965836;
        Wed, 08 May 2019 04:12:45 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id n1sm1419119wmc.19.2019.05.08.04.12.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 04:12:45 -0700 (PDT)
Date:   Wed, 8 May 2019 12:12:43 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        patches@opensource.cirrus.com
Subject: Re: [PATCH] mfd: lochnagar: Add links to binding docs for sound and
 hwmon
Message-ID: <20190508111243.GT3995@dell>
References: <20190501102350.3520-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190501102350.3520-1-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 May 2019, Charles Keepax wrote:

> Lochnagar is an evaluation and development board for Cirrus
> Logic Smart CODEC and Amp devices. It allows the connection of
> most Cirrus Logic devices on mini-cards, as well as allowing
> connection of various application processor systems to provide a
> full evaluation platform. This driver supports the board
> controller chip on the Lochnagar board.
> 
> Add links to the binding documents for the new sound and hardware
> monitor parts of the driver.
> 
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
>  .../devicetree/bindings/mfd/cirrus,lochnagar.txt        | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
