Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5501282DA2
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 10:23:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731787AbfHFIX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 04:23:29 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33689 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730068AbfHFIX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 04:23:28 -0400
Received: by mail-wr1-f67.google.com with SMTP id n9so87067275wru.0
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 01:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=RD9sOS7gT6ZlegeX1a0xUUJ7DdLDwuMR+Ckv3pGMllA=;
        b=h6pXcG7oNroWrnIk3CnKhwqgBwBR4Dv1+eoadyOR5J4QSWAhMOhwSXXeTtVm0LrCZx
         SYXqTmoOWEG41ioVPQTLIgR8e0soGHWPQhaXt0KrIaNH/04LaCFeRYRgrfXmQmiZH6cy
         Rk5n3VkaZ18aYQzy3I2Yx/oY3qrowQWCYDMKD2P8wkjG4mb0z0JqthxBsQs/s11o1keh
         CccZYfl1Krr3BJqTGqusotx3coT7DG/m997Kmch4NlU3jX0HbjqIWbhpD+OnGyM2OTKY
         06lD0qBw5hWs8QtxcxXYd7hVkOWYrEtiZnFjFXjOqEDT/uuz/KvGPggSeEXe1j91GNW/
         q5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RD9sOS7gT6ZlegeX1a0xUUJ7DdLDwuMR+Ckv3pGMllA=;
        b=iR6xFLrzcmB2dL+TPaZVP+wO9nKakDFJdSfH1n4PmuP5x2gb7xtS4lOzpg9wpniFDT
         rLmf4JhxgWodQFCPxObXQKwiuutunX/zRtOyTDxeoaPK3fFpuwQIyKWbKwWB+868GX5N
         KTaG4NcVlCrB/7CUCpbgwhH1MkF9z4Xc4rg4NQuD00O/CfijZZ8gE/Tz5IX0UZL74aGJ
         CiRNq14PF9jsptTcoxCmlJ/vrdE3g1yIWF7m0mBUAik73yCoXFLspAJrWhS/o3ayYKSf
         0tomzWnwi7dunVytvj0rLSGvDiDU9CiCcWEkFTSwTK2jc272bOoat+uR9lYTfxdPsgfX
         Qu4g==
X-Gm-Message-State: APjAAAVmheCRozQa7wjxrjVSN99qs2GaIuiWCK7usvjj+YFTeFicYiww
        IL/ybzxxxWUpFlCYYRMABeadrnUuzSQ=
X-Google-Smtp-Source: APXvYqwdUng/sQOPDCg+WzY/aqTQBtLKU0Ijopke9iG1HFvl2OQSdFnJfqvRpH9W3B1gMsvLdUL86A==
X-Received: by 2002:adf:c003:: with SMTP id z3mr3290757wre.243.1565079806121;
        Tue, 06 Aug 2019 01:23:26 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id c1sm198509779wrh.1.2019.08.06.01.23.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 01:23:25 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] firmware: meson_sm: Rework driver as a proper
 platform driver
To:     Carlo Caione <ccaione@baylibre.com>, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-5-ccaione@baylibre.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0a4f48fa-0110-78b5-75d9-091849ab4691@linaro.org>
Date:   Tue, 6 Aug 2019 09:23:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190731082339.20163-5-ccaione@baylibre.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31/07/2019 09:23, Carlo Caione wrote:
> The secure monitor driver is currently a frankenstein driver which is
> registered as a platform driver but its functionality goes through a
> global struct accessed by the consumer drivers using exported helper
> functions.
> 
> Try to tidy up the driver moving the firmware struct into the driver
> data and make the consumer drivers referencing the secure-monitor using
> a new property in the DT.
> 
> Currently only the nvmem driver is using this API so we can fix it in
> the same commit.
> 
> Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>   drivers/firmware/meson/meson_sm.c       | 94 +++++++++++++++++--------
>   drivers/nvmem/meson-efuse.c             | 24 ++++++-

Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


