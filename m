Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1992A2CA9A
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 17:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726236AbfE1Psv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 11:48:51 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:43672 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726602AbfE1Psv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 11:48:51 -0400
Received: by mail-pl1-f195.google.com with SMTP id gn7so8482754plb.10
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 08:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:from:cc:to:user-agent:date;
        bh=2ksREyYQk7jUAmxjj6kKAaOfKzWITL2u9MpABedwwuE=;
        b=mMTWIHmtpHW/kCfVi7P/cdu0cX26em5nK45r/zhOOcmUvWoS6ny5gdVUjARVj1qqNK
         4+4OFcJ5R228v+wDVhBxn94cnE44EABCId0UFIwIP5SDEzNR6bv9isp3KRyTQTY/A2As
         GpyW8tWMC2sAGjRODK86Fqrn7XUvEVXYfts90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
         :user-agent:date;
        bh=2ksREyYQk7jUAmxjj6kKAaOfKzWITL2u9MpABedwwuE=;
        b=B0MuTPhpQmHe/Mwvw+uSLA4epHzYEdpgA1ubz803r9NVPKd1yOe+DWdhR0zGamVFE/
         LeowSkdWyQPpf4kLONnkinreRp8hW6DDtqlRDiBmPkghA1xFscIn0W78830tUA/jjT9K
         jeUd7HEe+APmEO0e6L8iOrm7lfxVSeYnGeKb3A9Z04eHRu3VTTjUKkWPXRu1bKeShu+9
         kds7Rt743JTxHkRraNHuo1YuT3Z+tv4gBjsQrzFvYqHwZXr3yLuXVPLipXilwRlNRcV8
         HX/jffB+J/6YB9ZFO7CXE6mMiuHehf0RT9zCnq2F9+c/0ze7nNFE2pOvREx5Eseb1atQ
         trEQ==
X-Gm-Message-State: APjAAAXtusUWXpO17Z6/KL8dHOQ/sSWXVxuAgjF+OYKBi7RIFBnu5ggb
        6c54ATi9ly8Ez8Cm6hLsw/mdQg==
X-Google-Smtp-Source: APXvYqw9Crknxqe7+aih5W//k5MSZWoQ/ebigbuqf3onineoNwCYYi5TbTQA2Zp87VlgT8TB+Rekmg==
X-Received: by 2002:a17:902:2aa6:: with SMTP id j35mr55060624plb.189.1559058530522;
        Tue, 28 May 2019 08:48:50 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id 206sm14582069pfy.90.2019.05.28.08.48.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 28 May 2019 08:48:49 -0700 (PDT)
Message-ID: <5ced5861.1c69fb81.956d8.5fb2@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190527043336.112854-1-hsinyi@chromium.org>
References: <20190527043336.112854-1-hsinyi@chromium.org>
Subject: Re: [PATCH v5 1/3] arm64: map FDT as RW for early_init_dt_scan()
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Kees Cook <keescook@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>
To:     Hsin-Yi Wang <hsinyi@chromium.org>,
        linux-arm-kernel@lists.infradead.org
User-Agent: alot/0.8.1
Date:   Tue, 28 May 2019 08:48:48 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Hsin-Yi Wang (2019-05-26 21:33:34)
> Currently in arm64, FDT is mapped to RO before it's passed to
> early_init_dt_scan(). However, there might be some codes
> (eg. commit "fdt: add support for rng-seed") that need to modify FDT
> during init. Map FDT to RO after early fixups are done.
>=20
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

