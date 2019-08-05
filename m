Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C2BEC8227E
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 18:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728801AbfHEQfH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 12:35:07 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:33477 "EHLO
        mail-qk1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728686AbfHEQfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 12:35:07 -0400
Received: by mail-qk1-f181.google.com with SMTP id r6so60606805qkc.0
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 09:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YiRlEkepGMSBghGordYKrd53LhTX7Zo4aO4skFP+FPQ=;
        b=KvAAsEp7EBlmFnFm4A3RAJMlB16Gu/ClvhmFXF3/nwkvC5G3iN4z6D5ZAIMQe6rNqy
         C9y9oS1wkZ6b0qlJqiG5dKcARxLYs606StbTrx5pU50S/+YvdJKieH9ziJKmkBTXHyxr
         vd8kTNJR5d72pYVhLyhomafAyREIb+BcHb5B0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YiRlEkepGMSBghGordYKrd53LhTX7Zo4aO4skFP+FPQ=;
        b=bSgf8f3Ve0E1LgIjGH1g7CoPnyfRPQBt2Eucbum1DZH1hNlwj4Ab2dg6UzsDebC6H6
         tQPHz6KXAcscDo7C7lqlbrw3510D+NmdC6I34SB4ewPlXHhz5/nS/puG3TqMuDr1RnlZ
         XDpU4vcaQ8wNUNxCQv4HyDW+8Ojo0TLH0zoGK7STGSIT5MNgAfGTxA2bKg7w5EqyCXqn
         xMXWmyoJtjESuHVgtCHI7n4z8v+01+iqUB5Z6nHDX0q9bmRxOwHG/CqIpEeWX64xvyXB
         +xuJR3SvStKD3ADcrdurxXgDW2dBODuvcybgjcuhi1whrxWV6vF7giqfkXjvSvuEtVNk
         VpCQ==
X-Gm-Message-State: APjAAAWS/J0b4GuzbybQzQ5nNOwea2WnFqhUy4NxwQR9eM6NqkNxoDCE
        xWn6T3DKu/XFQte0wTtbexz8yP40UEr5hVPqjrP8Zg==
X-Google-Smtp-Source: APXvYqwpHxcg06Mbli+NdzWaalL0e2240Scm0EbQOE4XY2ybkQPkjSSR20aWvi9JTpQhhWlZ4idPL5YNwkECJiwlU5I=
X-Received: by 2002:a37:660b:: with SMTP id a11mr99152263qkc.342.1565022905887;
 Mon, 05 Aug 2019 09:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190703040135.169843-1-hsinyi@chromium.org>
In-Reply-To: <20190703040135.169843-1-hsinyi@chromium.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 5 Aug 2019 09:34:40 -0700
Message-ID: <CAJMQK-jaLi9QaZ4n0TguL7GD_rdn6VVNnf-3=j2XwGbUHwrgBw@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] add support for rng-seed
To:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ping on the thread.
Should the series be proceeded?

Thanks
