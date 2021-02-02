Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC51E30B65C
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 05:19:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbhBBETj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 23:19:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231649AbhBBETg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 23:19:36 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 153A4C06174A
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 20:18:56 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id e15so1117330wme.0
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 20:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:sender:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=PrILWatQiBB/YexVPvDZsH566iBzGTKnf23zrhwD0wk=;
        b=iOKv5Sc1inl312FBxqy4hce/k/mxY/41yHUcB6BF1S2H50op20QGRNHsqcUKVT8KLG
         mvWI2/iAAzh4WjvdbAk9N8Ympyy5ZXat9nSkfi63cV59F9w7CpFsEmwf5bx8iukHzZP1
         ZJ1opzy94O6baSFZXSAUb9JMsbB3RQv75+C8IC91O0xmboNKA3pC0L0NJa8Lyp6LaT95
         rt3ld8yqxbHKLjzGM3AOguAXgTx0Us32eStvvUVbdnmvA0dYPxqIzWsKGbe+HIziAzlf
         L60rdROELrobxVJmjG+3LDJ+t/pN7yWEwvzklJOCzCTtnD4RRQVGBP0T83Dj2f+eJal0
         K1Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:sender:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=PrILWatQiBB/YexVPvDZsH566iBzGTKnf23zrhwD0wk=;
        b=EVkJdzC+i2eO0Bq+kBDbPh+0qh91U4jCozkBCOweZ6oSzCNCrM732AyYMvCrUtRSQP
         q/0TUuw0p9NQGLm3CXgXFHWxI1qlQdg5k5MoW3/e0mgt/nbf3PG88NGJIgpVNL0rOoW4
         mIod4OkD2Xk8/oe2A/cDLIHRVpoiKZiRd1GM/1lf9MAN68wBVixuY2V0s52seGGCJ5Yq
         KrY1hUhTq9bPQ+X7L/Vr7NVRojpn+fmMkvnm6q+oiv+eRiv96sOh0f+XDmKlrqMvf6RG
         aTcwChsG993DfOacEofHOokd5nj+3NkPDZEcnhpHiwkfNOmzCToEwOIim5F2y+ZSVZbt
         5Vhg==
X-Gm-Message-State: AOAM53263HnaMGb12bOfC3QhdljJvR4QyNbwi7adcwPINIP4mEBij8wK
        KAMy2JC1l621qWpCRVzjRg==
X-Google-Smtp-Source: ABdhPJy/NoZ342bm3JKxqhAoXB4gLXaywqJi4V0LbjY5pzz9c9Ebp/nJLecIpR5roIP8Ee5dhFNB6A==
X-Received: by 2002:a1c:1d8b:: with SMTP id d133mr1709819wmd.172.1612239534900;
        Mon, 01 Feb 2021 20:18:54 -0800 (PST)
Received: from [192.168.1.8] ([41.83.208.55])
        by smtp.gmail.com with ESMTPSA id n193sm1306436wmb.0.2021.02.01.20.18.51
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 01 Feb 2021 20:18:54 -0800 (PST)
Message-ID: <6018d2ae.1c69fb81.ccb08.54c6@mx.google.com>
Sender: skylar anderson <courandoy37@gmail.com>
From:   Skylar Anderson <sgt.skylaranderson200@gmail.com>
X-Google-Original-From: Skylar Anderson
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: si
To:     Recipients <Skylar@vger.kernel.org>
Date:   Tue, 02 Feb 2021 04:18:48 +0000
Reply-To: sgt.skylaranderson200@gmail.com
X-Mailer: cdcaafe51be8cdb99a1c85906066cad3d0e60e273541515a58395093a7c4e1f0eefb01d7fc4e6278706e9fb8c4dad093c3263345202970888b6b4d817f9e998c032e7d59
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

esto es urgente / can we talk this
