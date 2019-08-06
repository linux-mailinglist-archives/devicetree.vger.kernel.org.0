Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70A3283BC9
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 23:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729567AbfHFViB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 17:38:01 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:44775 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729555AbfHFViB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 17:38:01 -0400
Received: by mail-ot1-f65.google.com with SMTP id b7so46087295otl.11
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=lorWiddpxg2WMsy0/smy1K1C0pOfS2GdN2jnCeFogUs=;
        b=Q0Zjd+TM00oZ630nvIWNZ+HRm51Wsx5YHS2eeY8dHTTrbbgj7LjxyTLFOfgusW38kG
         wUssvWh5QtUnttZvlObrMx4ERY8wi8VJZsi/QRCWmLJ1w5S95mvpP8qXP1UYr1dH/ZmW
         5KGIqlPD1hOdbJX4af/sLexZHpyTvOce84cZQ7GSnGYvxPmiIdZg6KNhOqdRIpLtn5io
         rpUIoH4kb87hxR8tv8gevBuwFMYmJLwJC2E39hMHz//t+3AR412RMkSTzP3e8T/0wocs
         a6iP2KtaSIRWpj0P/BDXMz2wcO4uxVeHP2eSBk45hWyLOcK3kjynpMKguic5NKjTjKxf
         +ZFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=lorWiddpxg2WMsy0/smy1K1C0pOfS2GdN2jnCeFogUs=;
        b=EH5wAxziilHTxVZq0R0sllUfiC0QXoUCKX4h62zD5pSmUMnUbgSSXYXHOMj258YMPk
         ZqP1HH5JT2HcaP/S+RZyXOo5UhrQRwIwHE0K9mMMu4RYtdMrCsPAG8+xFs/OfDvIN8UW
         GPZiGYzCL1o2CmWe5EO9wpej30LOMirfm+Ui145JofKff5NzRRngcPpfU3j6zvsRTn1D
         bUQbSi6ZAAUQhRb6IQJ+Nch4dVcraBwCcUmsGNro0OYpndOvJeBw4qB/K8wSs06MFtHA
         T5phpKn+boRPdX9UZgbenlitggdm3lLyR049GNnux4oZP0fDh6v4u2UizzyNq1UpgfET
         807A==
X-Gm-Message-State: APjAAAXh6ThIMGES99v+jTz9ingxNoVqkpf0ptCDlBDkNCRX0l3lxRyV
        KuQLCGdV57Fytt5lvTxDO8LaMA==
X-Google-Smtp-Source: APXvYqwDSlDrT26BRCk2A5kNmd5K8poKBkr8uW3JWosK9nm0mwlDSBLckAmTzrf3lJWlTfKIVDn2LQ==
X-Received: by 2002:a5d:8497:: with SMTP id t23mr5657932iom.298.1565127480073;
        Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id t19sm78314934iog.41.2019.08.06.14.37.59
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 14:37:59 -0700 (PDT)
Date:   Tue, 6 Aug 2019 14:37:58 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Atish Patra <atish.patra@wdc.com>
cc:     linux-kernel@vger.kernel.org, Alan Kao <alankao@andestech.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup.patel@wdc.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        devicetree@vger.kernel.org, Enrico Weigelt <info@metux.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Johan Hovold <johan@kernel.org>,
        linux-riscv@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v4 1/4] RISC-V: Remove per cpu clocksource
In-Reply-To: <20190803042723.7163-2-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061437000.13971@viisi.sifive.com>
References: <20190803042723.7163-1-atish.patra@wdc.com> <20190803042723.7163-2-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2 Aug 2019, Atish Patra wrote:

> There is only one clocksource in RISC-V. The boot cpu initializes
> that clocksource. No need to keep a percpu data structure.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Thanks, queued for v5.3-rc4.


- Paul
