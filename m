Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B46B2750EBE
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 18:40:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjGLQkr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 12:40:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232515AbjGLQkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 12:40:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D66F010C7
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 09:40:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6BFDB6184D
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 16:40:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDBC7C433C8;
        Wed, 12 Jul 2023 16:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689180042;
        bh=NaEjASo8miCEM8dHYi4Pq2EhZ+qM+1epK9npg8XNShk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ExW4awx5okU1EW9jtlQ3leXf82VONqpLmSsvBk+iZSR1F1BTppK7GkUSvRw6/W0Ai
         nqh8a8Dy1FHrj7MZRMDWrxy/c1dnDnyTBbkueTx79VxJEa1GNCjGdLWfW0sjxzoFW/
         /p7fvQ+BicoQ8kCYbrwW1fIGCv+QwYx68EstAVgaObPTc44g5znCjyuUQ9EJU52ivt
         NIQoghGtxx9FXZxzNaLf7MlrXecRHHvWqsChP8NaVk6Ry/pwS3ZW0Wd5lL9XBCLYO9
         0G0pqyk282k+jOQpFTc81bNlRp9pATloBQGknqazOq0pf1uSP/mt+4oCp/rQq1eYF6
         bYUw/s2+603yA==
From:   Conor Dooley <conor@kernel.org>
To:     Emil Renner Berthing <kernel@esmil.dk>,
        Felix Moessbauer <felix.moessbauer@siemens.com>
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for starfive devices
Date:   Wed, 12 Jul 2023 17:40:27 +0100
Message-Id: <20230712-legume-establish-d389b8e40984@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627080620.329873-1-felix.moessbauer@siemens.com>
References: <20230627080620.329873-1-felix.moessbauer@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=668; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=gzdlf/v0s7NPqIfXdlJejLX56LsDjYc1MrowUq7PFns=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCnrrlfYHZfen/Cv43/Yg3eTG75v4o6Z6TxZTzNasezOh FqtbfsyO0pZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRM9oMf+UtZ773qVj9frq5 TNHb5T/P5kxexm1140pN8Y7IbROKlSoZ/id3dmpsN/DrWaP2hJVx7ZcNvlZRaZVrqmTnWpy8n3h Lih8A
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Tue, 27 Jun 2023 16:06:20 +0800, Felix Moessbauer wrote:
> Add the '-@' DTC option for the starfive devices. This option
> populates the '__symbols__' node that contains all the necessary symbols
> for supporting device-tree overlays (for instance from the firmware or
> the bootloader) on these devices.
> 
> The starfive devices allow various modules to be connected and this
> enables users to create out-of-tree device-tree overlays for these modules.
> 
> [...]

Applied to riscv-dt-for-next, thanks!

[1/1] riscv: dts: Enable device-tree overlay support for starfive devices
      https://git.kernel.org/conor/c/ef6012f301f7

Thanks,
Conor.
