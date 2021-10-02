Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C712941FA6F
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 10:54:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232590AbhJBI4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Oct 2021 04:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232549AbhJBI4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Oct 2021 04:56:20 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB9E7C061570
        for <devicetree@vger.kernel.org>; Sat,  2 Oct 2021 01:54:34 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4HM14m6WnJzQk4Q;
        Sat,  2 Oct 2021 10:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1633164869; bh=F/bUp6LuQq
        hrVvLmFvLTVdfVmhxJVLNrN7TWNzLeElE=; b=W9vU7pe/9MXnmyS1XZ8wyCsK5Z
        Sq3PXtWwxQxO/yF7+7w+OHvTq1J4IZyx1U3h12hTYEpF+qwfON0+MRnr8ga9rs+v
        XfwTwp60iWnrmRQPJrNNVpXeA/f7u5xhjVwHbkjCNrHX/PRi2UjQjnr5CMyp03kE
        49s2tnNrVRlXlfAzPbx+kIwo8F1i6SPRdG/iCKenQKWcaBoVVzKFqawEvsVcQ670
        E6vD780SxMQi0ylzjHwZAPgehPsDXeLsOTf8D3EVHZvrkHxr9tdDf/thafpCFOR2
        +TlTcFl05a3zv9gpa8v6TDpCzzroLi8RwmXnK5SshjEbYEtZXKG6kXdPt9Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1633164870;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UkiZmpWhMlojqJXU2ywGtm9SmvU5lD3peaacs9hyFmU=;
        b=uihyxFb8rGu76MyIRG6TP4zzXwt+EWJHkrMaKhMid2CSf0iEYudeiuF65jkJsKW7f0+UPD
        9bXmvvYKMfcdEqt6vNW5C47nqtv5OvdnFbuUdBGFRNbarg3vEWfm9gxaTuPStIQxtyct8v
        xUZyTrj0JzYwwPVQO/0DyvwUAXPsTE1w9Gk9gO2zOw7NrJR/9zYpvkVCSUvJrxTpiW0IDr
        qR3sODxJXf2bN5qZxA9mL8wNQH4PuwfnlZyRBr6QQ8+otHvoJWGfxw4ATBERKhiewo7yp9
        +B1WXky0mSsUDsNBpM3ve/bxSJe2j5RYLydXupQLsyY+3U0wZ9jDfh8QOQjq9Q==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
Date:   Sat, 02 Oct 2021 10:54:25 +0200
Message-ID: <7392649.txi2qhsmnO@natsu>
In-Reply-To: <e115009e-d93e-4e05-0ff0-c754fd867ae0@baylibre.com>
References: <20210127230852.66686-1-alexander.stein@mailbox.org> <3603832.OnnjH37t2F@natsu> <e115009e-d93e-4e05-0ff0-c754fd867ae0@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Rspamd-Queue-Id: 6D7B226A
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Neil,

Am Samstag, 2. Oktober 2021, 10:49:46 CEST schrieb Neil Armstrong:
> Look at
> https://github.com/torvalds/linux/blame/53d5fc89d66a778577295020dc57bb3ccec
> 84354/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi#L21
> 
> The commit
> https://github.com/torvalds/linux/commit/ab547c4fb39fe145b39e3013633258a5ff
> 475d88 is upstream since v5.13-rc1

Ah, the SHA1 changed. Dunno why I didn't see it in mainline though.
Thanks for the update and sorry for the noise.

Best regards,
Alexander



