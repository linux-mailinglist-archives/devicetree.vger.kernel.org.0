Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B1BA41FA2B
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 08:56:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232473AbhJBG6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Oct 2021 02:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhJBG6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Oct 2021 02:58:37 -0400
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B60C8C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 23:56:51 -0700 (PDT)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4HLySr2pc3zQk3T;
        Sat,  2 Oct 2021 08:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1633157800; bh=Kbdp4ImEa6
        wUE7fQ+D4duRRbC1+0FN8uxmoUD4q7h3M=; b=mGAs7LO5p9VyDH1euVA+AZ4RBn
        aXZ2aEoGMUkOg54MXZjTr3x7JGBm5FZ7BpP+LAlMBJxwf5nQ5IpT9AFwEkkOWqDz
        SeLYa0wJSRmYiUxyCSG+jgNBcCV9wlXeXg+63tsa+YmbccJkwPBW5ab/XhMpWkBz
        27HSHAcdDWBR8lTFwR/Ibc7TnSaaPo1u2q+XJVjkORzW8xefPPRHzDSEsyJXTZaT
        1t88gwuU7jQ3Z8bKbdMhkj9htV1KyZ4c1BBUoZx9oO3s+BOe8VsFP7bKVF5sTO79
        0MXO2pu2pL5xsUrFNl4MX5oUYDa6EFGPeKjypqb87/klMGeOygQqGNLgvu/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1633157802;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Kbdp4ImEa6wUE7fQ+D4duRRbC1+0FN8uxmoUD4q7h3M=;
        b=Y+COZ7A83wIUBSGSZS/viSxqF+JNvHgIV1aQEYROfQ6zYP3JD+XnoXsm22yr+qxzbRc3JN
        9/rjSWrV/jtcGEsrgmeN0OtLMAk8VJGATf4mAcu4SCB8CAAll2Ys3EmN2e+rQwB46KJB3p
        JvHApGsbQWBh7Z8l2PO3I5E3T2USb9AytmVikVFEBJu6kIvkwgQZqhyoZL7AH7rnfLDb0w
        2zMH9V420BAbt1vB4ddwIDPSPkohDKpvrJiHB8k/x2UsM0a6C4p1JHB1qGgd3gpQ+w1vnu
        ketNudt6dT4M24fzmn+RbJg1jXmbHILKm2WmszJU7oLtqBQ40ajMKPJk1aJLsw==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
Date:   Sat, 02 Oct 2021 08:56:37 +0200
Message-ID: <3603832.OnnjH37t2F@natsu>
In-Reply-To: <7him6135iw.fsf@baylibre.com>
References: <20210127230852.66686-1-alexander.stein@mailbox.org> <2921197.CJbAp5Dgou@natsu> <7him6135iw.fsf@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Rspamd-Queue-Id: D5A881899
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Kevin,

Am Montag, 8. M=E4rz 2021, 18:43:35 CEST schrieb Kevin Hilman:
> [...]
> Sorry for the delay.
>=20
> I somehow missed this v3 at the end of the v5.12 cycle, but I've queued
> it up for v5.13 now so it should get broader testing in linux-next now.

Was this patch [1] missed again by mistake? I can't find it in linux-next o=
r=20
anywhere else. [2] also shows that this commit is not referenced from any=20
branch.

Best regards,
Alexander

[1] https://patchwork.kernel.org/project/linux-amlogic/patch/
20210203192824.854491-1-alexander.stein@mailbox.org/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git/commi=
t/?
id=3D7827db7f6141fda9af4b07864cab0c10398affff


