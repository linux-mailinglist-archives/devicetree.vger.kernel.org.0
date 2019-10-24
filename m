Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 45FE8E3D68
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2019 22:36:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728271AbfJXUgb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Oct 2019 16:36:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36624 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728270AbfJXUgb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Oct 2019 16:36:31 -0400
Received: by mail-wr1-f68.google.com with SMTP id w18so26967429wrt.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2019 13:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=TcVdzhKCHKceqty/bwdBAIuB0q/LLF2xHZuEhIcLaNw=;
        b=cqY4m0XypXCSBqpzHHtWhgUFCHbmT57VQy8oBvnLAISynQINKKpzPP6+odj98MFuLE
         HluqoobpQbDLlzYbGlTU5gANVlaIukNdocp4R/2PpCbiGX6WIq5iDHqaFG2OEBKfgthz
         kyxybD6XLbFeFBfs1XEXDILzcwfH98xvfcKg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=TcVdzhKCHKceqty/bwdBAIuB0q/LLF2xHZuEhIcLaNw=;
        b=X+cs9RgMXiiBo8K2SP30qcYtJffTv0JPzn8QMa1R0IAQNsYkKoJq+PePDLPk8usO56
         vogoalXj0EO3rL5YJNDMziEN72YNfRAJs/8nY1CxGwAOVo0zWoQ1ecPv1N/utwT63wLY
         4S+4lSEIg9TolzlnOFf77acwDb2fc9zygtQGohUJhwSoQeuDPE/cixcC5DAVqF96WllO
         UPDGBOxTEgmjR/PAwHcUv5sLCbfzjr0JhhnMLfs8HCJvQ5OPdrSRICYutljKnY9ql0Lk
         oa2T+p6Z85hMxEkeDbpETV4DpBXhdEgiW60ppvGo4tJ75oMiaIZBSrOnb8LtY51TStUc
         NFDg==
X-Gm-Message-State: APjAAAW0tDhKuHlBKytSIq5dAbhFFsOjQdmDm6cXR7Bq+8p30QdKqrdl
        Gr54ODJUwNYvCDLZ+k9S3GKDCtNyvT96Ipe0
X-Google-Smtp-Source: APXvYqziKV2Dmlxn7bGB5F4iUFgJyQstWtSJc7wJ+q0Mtatc28JLRUxC2wgpiMudMnrZyLRPQIFYJQ==
X-Received: by 2002:adf:bad3:: with SMTP id w19mr6002008wrg.17.1571949388807;
        Thu, 24 Oct 2019 13:36:28 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id b196sm5240713wmd.24.2019.10.24.13.36.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:36:27 -0700 (PDT)
Subject: Re: [PATCH v4 0/2] gpio: brcm: XGS iProc GPIO driver
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>,
        linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, mark.rutland@arm.com, rjui@broadcom.com,
        sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
From:   Scott Branden <scott.branden@broadcom.com>
Message-ID: <12a8ace7-f69d-4002-0146-e84a62b8fd69@broadcom.com>
Date:   Thu, 24 Oct 2019 13:36:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Patch Series looks ok.

On 2019-10-24 1:27 p.m., Chris Packham wrote:
> This is ported this from Broadcom's XLDK (now heavily modified). There seem to
> be 3 different IP blocks for 3 separate banks of GPIOs in the iProc chips.
>
> I've dropped everything except support for the Chip Common A GPIO
> controller because the other blocks actually seem to be supportable with
> other drivers. The driver itself is halfway between pinctrl-nsp-gpio.c
> and pinctrl-iproc-gpio.c.
>
> Chris Packham (2):
>    dt-bindings: gpio: brcm: Add bindings for xgs-iproc
>    gpio: Add xgs-iproc driver
Acked-by: Scott Branden <scott.branden@broadcom.com>
>
>   .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    |  70 ++++
>   drivers/gpio/Kconfig                          |   9 +
>   drivers/gpio/Makefile                         |   1 +
>   drivers/gpio/gpio-xgs-iproc.c                 | 321 ++++++++++++++++++
>   4 files changed, 401 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
>   create mode 100644 drivers/gpio/gpio-xgs-iproc.c
>

