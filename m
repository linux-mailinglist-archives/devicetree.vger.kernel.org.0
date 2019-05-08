Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F209517663
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 13:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726583AbfEHLBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 07:01:44 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54498 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726444AbfEHLBm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 07:01:42 -0400
Received: by mail-wm1-f66.google.com with SMTP id b203so1540869wmb.4
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 04:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=bqSOd5NdwH2sBo5UJZZvv7ez5x168vj6NoDWWxf39h8=;
        b=vLr9lpNr81dJnJ4ki7Ofpz8YeDdWr5J7E+WbnN/TNKj2AV3rmoRX4bKe2x+R9pq/e6
         rPwD07ephFcN39P8gkmRM8gmn9BylEndxfZ4ksrIRTw5ZW/qREgIVkccuqVGdZnOC8UO
         R2CBVpx7dR8q4ZZSV0NxML8KhRgqyivdUNVwS5hIbb54TJ3/5cE6d1tIDK0o/wEkv8iz
         8Ui+O+TZ3TcY+61yvIhzB1f5KHXZmSrWfMNdge130ZNe+k6xaZlxKDA0/sodnyn9u2wK
         fotiY/BcQTzEs4psCyDrmZ/FJsiwdKE34X03fM56OH9BWd/Qhv6ezXJUVgz9MLzXnBha
         rc9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=bqSOd5NdwH2sBo5UJZZvv7ez5x168vj6NoDWWxf39h8=;
        b=dn3CJEu1q6FGVkBX2bjgUFqSXLJaBU8YKFDikcM8y2fddwFGhbmbHTG/KEAabKnFJ4
         BSHZL7igaqWf/65Db/tW9V1NH4qY3no95AojJh4/0A4pObX739mL2+mX0qyBOOaQ5Yrk
         wwk0gXPSUFtcOrmot6qgcdAgQkkWNQx+sbb7AMq//grKW5D77nTmqXngrNW4ZOfdCJdU
         r+bR+D+w4Z+gonBhcoV156rx7lCx7o1kZANkauv1K+zqt1kY5gk6YxBLTas3yifGh5ea
         WqD5xCf6adGeCut1tIcAaYNTVEjJpKk6mrYaZvz9ZAF8qdWMuYR0fWyQQXj5Md7lU45a
         hizg==
X-Gm-Message-State: APjAAAWjsdkKFANlcdG8px8WmrsJAOTJ5B5j9Lczk58zQOwAwShxVubN
        BpdP/uORrLw70mrIEXAauz1p8Q==
X-Google-Smtp-Source: APXvYqw1fiLxjnK9R324L7VjjDByPPrSiZVo/OEiG702CWo1hF7gtinHSZSWaINQaniIOrY5HwsZVw==
X-Received: by 2002:a1c:48d7:: with SMTP id v206mr1187312wma.38.1557313299959;
        Wed, 08 May 2019 04:01:39 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id a125sm3243927wmc.47.2019.05.08.04.01.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 04:01:39 -0700 (PDT)
Date:   Wed, 8 May 2019 12:01:37 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-leds@vger.kernel.org, linux-pm@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v10 06/11] mfd: max77650: new core mfd driver
Message-ID: <20190508110137.GQ3995@dell>
References: <20190423090451.23711-1-brgl@bgdev.pl>
 <20190423090451.23711-7-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190423090451.23711-7-brgl@bgdev.pl>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Apr 2019, Bartosz Golaszewski wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Add the core mfd driver for max77650 PMIC. We define five sub-devices
> for which the drivers will be added in subsequent patches.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/mfd/Kconfig          |  14 +++
>  drivers/mfd/Makefile         |   1 +
>  drivers/mfd/max77650.c       | 232 +++++++++++++++++++++++++++++++++++
>  include/linux/mfd/max77650.h |  59 +++++++++
>  4 files changed, 306 insertions(+)
>  create mode 100644 drivers/mfd/max77650.c
>  create mode 100644 include/linux/mfd/max77650.h

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
