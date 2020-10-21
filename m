Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E46482954E5
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 00:51:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438632AbgJUWvI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 18:51:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405591AbgJUWvI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 18:51:08 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 931B1C0613CE
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:07 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id b1so5114735lfp.11
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1J8b8r8e8arlKZ5qT0wUMf4rHqiHkmkucz0g8FFgzmU=;
        b=DEisn8268yfibuO+1k6l+TtWzikWoWDb9harpWX+6+/rKtWWlZrOIYHHkUBf+0vFFV
         G7jQNlDs7bS/eAEJuycB214Fh11bOHcDlt+HR+YS8uaOWLDE4hyXkV3+pvkVxqXuoy5M
         q0wgdLmYGKg4VWIqE5ZfLY+HqUz5Rh8tjbFd8mWRU8Ty5XfvScBjsXjx9r3KF4wcFKJQ
         ePJEpi9TNuz52qQWlp8qufLZD256uWHjaLr+Y1hwWdrdzKK/rXDHkKBTuswCO6aA4ca8
         NXLoBscqyUxt20Ea9jbQHhDaOCG8kIkMQPzhlskBEDq6QGTZsVfQOJBzRsbFzOAGx03B
         JwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1J8b8r8e8arlKZ5qT0wUMf4rHqiHkmkucz0g8FFgzmU=;
        b=uJZHQMIDSaElPCs0Q3igFHb/+be5wdPbFRaWYz8nyFWfDBCj6kVA1HC1sL25owTUlA
         r0YRJxzV1mLnoaEQq/hN0XbHCLslV5N5oZdRt5GnocDds9smA0xHAQh1XJcRZeZcjC7j
         C8FUh5TzrMJNe0OYfgd/neHXbjioSuyxkEMUs8Gmhm5q/K5Vurm6I/emlCl3428sSE9w
         nlGsxZTOhq6TcbU4UNsoorc6pWFy+Ba0aZzHVTKEZZdHRJg13tYtcMWbgow7i63Tu7dW
         04xkSBJmpDXoJcAbmHKRdMNUBME982v7SSVl1KliRS2PNFBAYRLctTkHYjfKLWwy38rF
         AE5A==
X-Gm-Message-State: AOAM533NsOE8DTZulFJvkvPknLABx2ThX6LjNEeNhHZOd+SMvAgBtqhH
        8E2pCnBHd0FMj1WYziE3t2U9NQ==
X-Google-Smtp-Source: ABdhPJw90v/6tELg9yh+3sysdMBaND2duQOnwUInK7lGNGIrYhv3mpEAsSzlxiSHC1BERctLsNqZrw==
X-Received: by 2002:a19:820c:: with SMTP id e12mr1858585lfd.215.1603320666025;
        Wed, 21 Oct 2020 15:51:06 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id h11sm652062ljc.21.2020.10.21.15.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 15:51:05 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 0/5] Qualcomm LPG support for PM8150b/l
Date:   Thu, 22 Oct 2020 01:50:55 +0300
Message-Id: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset brings support for LPG blocks on Qualcomm's PM8150[BL]
PMIC chips, see [1]. PM8150L support was tested on RB5 platform.

This patchset can be folded into the aforementioned series, if Bjorn
would like to, or it can go as a separate instance.

[1] https://lore.kernel.org/linux-arm-msm/20201021201224.3430546-1-bjorn.andersson@linaro.org/


