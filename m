Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D912144546D
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 15:01:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbhKDOEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 10:04:16 -0400
Received: from sibelius.xs4all.nl ([83.163.83.176]:63387 "EHLO
        sibelius.xs4all.nl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231230AbhKDOEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Nov 2021 10:04:16 -0400
Received: from localhost (bloch.sibelius.xs4all.nl [local])
        by bloch.sibelius.xs4all.nl (OpenSMTPD) with ESMTPA id 036c9966;
        Thu, 4 Nov 2021 15:01:36 +0100 (CET)
Date:   Thu, 4 Nov 2021 15:01:36 +0100 (CET)
From:   Mark Kettenis <mark.kettenis@xs4all.nl>
To:     devicetree@vger.kernel.org
CC:     marcan@marcan.st, sven@svenpeter.dev, alyssa@rosenzweig.io
Subject: [RFC] WiFi hardware properties on PCI device nodes
Message-ID: <d3cab34b0af426f7@bloch.sibelius.xs4all.nl>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The Apple Silicon Macs use a Broadcom BCM4378 PCIe WiFi chip which is
part of "brcmfmac" family.  Like other members of this family, this
part needs firmware, "nvram" data and a CLM blob to be loaded by the
OS to function.  The actual files to load depend on a number of
parameters.  Some of those parameters are programmed in to on-chip OTP
memory.  But others (in particular the name of the module that
integrates the WiFi chip and the antenna SKU) are passed along in
Apple's version of the device tree.  It seems logical to encode this
information in a property in "our" device tree as well.

We already have a device tree node for the PCIe device corresponding
to the BCM4378 device in our device tree in order to have a place to
put a "local-mac-address" property.  So we can easily add other
properties to this node. Since the module names and antenna SKU
designations are specific to Apple hardware it would probably be best
to use an "apple," vendor prefix for these properties.  So something
like "apple,module" and "apple,antenna" string properties.

How are device tree bindings for such properties handled?  I looked
through the existing bindings, but didn't find any pre-existing
examples where a particular binding defines properties associated with
a PCIe device nodes.

Thanks,

Mark
