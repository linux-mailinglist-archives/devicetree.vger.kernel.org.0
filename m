Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B21D141FC
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2019 20:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726965AbfEES4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 May 2019 14:56:36 -0400
Received: from outils.crapouillou.net ([89.234.176.41]:57940 "EHLO
        crapouillou.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfEES4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 May 2019 14:56:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
        s=mail; t=1557082594; h=from:from:sender:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:mime-version:mime-version:
         content-type:content-type:content-transfer-encoding:in-reply-to:
         references; bh=/1LLwhElOCPQPds1eT6jWMSjLnkPfC+fDgGrWYQQu20=;
        b=Ko915ZQRb6wz+0HqzvyC7S2l7CbS662Kz8l1nqGeZ2gTwo7i3pUNaWeSDCW5J1J2JVQ/Z9
        5I/T/LJjanHT/t8iAmbMU/oeRfuuDM+4v4XtpwtCRhI3Jn7BzPNVD5E3ik9ZwJp9KWY7GD
        4BjR4LNOd9mV2JPbgyl3nneHtFB5pEg=
Date:   Sun, 05 May 2019 20:56:21 +0200
From:   Paul Cercueil <paul@crapouillou.net>
Subject: Multiple device drivers sharing one node
To:     devicetree@vger.kernel.org
Message-Id: <1557082581.1990.0@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I have one devicetree node shared by several drivers.

Should the node have one single compatible string, and each
driver matches it, or should it have one different compatible
string per driver?

Thanks,
-Paul


